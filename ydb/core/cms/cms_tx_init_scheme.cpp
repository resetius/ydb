#include "cms_impl.h"
#include "scheme.h"

namespace NKikimr {
namespace NCms {

class TCms::TTxInitScheme : public TTransactionBase<TCms> {
public:
    TTxInitScheme(TCms *self)
        : TBase(self)
    {
    }

    bool Execute(TTransactionContext &txc, const TActorContext &ctx) override
    {
        LOG_DEBUG(ctx, NKikimrServices::CMS, "TTxInitScheme Execute");

        NIceDb::TNiceDb(txc.DB).Materialize<Schema>();

        return true;
    }

    void Complete(const TActorContext &ctx) override
    {
        LOG_DEBUG(ctx, NKikimrServices::CMS, "TTxInitScheme Complete");

        Self->Execute(Self->CreateTxLoadState(), ctx);
    }
};

ITransaction* TCms::CreateTxInitScheme()
{
    return new TTxInitScheme(this);
}

} // NCms
} // NKikimr
