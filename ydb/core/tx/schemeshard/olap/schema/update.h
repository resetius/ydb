#pragma once

namespace NKikimr::NSchemeShard {

    class TOlapSchemaUpdate {
        YDB_READONLY_DEF(TOlapColumnsUpdate, Columns);
        YDB_READONLY_DEF(TOlapIndexesUpdate, Indexes);
        YDB_READONLY_OPT(NKikimrSchemeOp::EColumnTableEngine, Engine);
    public:
        bool Parse(const NKikimrSchemeOp::TColumnTableSchema& tableSchema, IErrorCollector& errors, bool allowNullKeys = false);
        bool Parse(const NKikimrSchemeOp::TAlterColumnTableSchema& alterRequest, IErrorCollector& errors);
    };
}