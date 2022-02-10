/**
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

#pragma once
#include <aws/s3/S3_EXPORTS.h>
#include <aws/s3/model/ObjectLockLegalHoldStatus.h>
#include <utility>

namespace Aws
{
namespace Utils
{
namespace Xml
{
  class XmlNode;
} // namespace Xml
} // namespace Utils
namespace S3
{
namespace Model
{

  /**
   * <p>A Legal Hold configuration for an object.</p><p><h3>See Also:</h3>   <a
   * href="http://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01/ObjectLockLegalHold">AWS
   * API Reference</a></p>
   */
  class AWS_S3_API ObjectLockLegalHold
  {
  public:
    ObjectLockLegalHold();
    ObjectLockLegalHold(const Aws::Utils::Xml::XmlNode& xmlNode);
    ObjectLockLegalHold& operator=(const Aws::Utils::Xml::XmlNode& xmlNode);

    void AddToNode(Aws::Utils::Xml::XmlNode& parentNode) const;


    /**
     * <p>Indicates whether the specified object has a Legal Hold in place.</p>
     */
    inline const ObjectLockLegalHoldStatus& GetStatus() const{ return m_status; }

    /**
     * <p>Indicates whether the specified object has a Legal Hold in place.</p>
     */
    inline bool StatusHasBeenSet() const { return m_statusHasBeenSet; }

    /**
     * <p>Indicates whether the specified object has a Legal Hold in place.</p>
     */
    inline void SetStatus(const ObjectLockLegalHoldStatus& value) { m_statusHasBeenSet = true; m_status = value; }

    /**
     * <p>Indicates whether the specified object has a Legal Hold in place.</p>
     */
    inline void SetStatus(ObjectLockLegalHoldStatus&& value) { m_statusHasBeenSet = true; m_status = std::move(value); }

    /**
     * <p>Indicates whether the specified object has a Legal Hold in place.</p>
     */
    inline ObjectLockLegalHold& WithStatus(const ObjectLockLegalHoldStatus& value) { SetStatus(value); return *this;}

    /**
     * <p>Indicates whether the specified object has a Legal Hold in place.</p>
     */
    inline ObjectLockLegalHold& WithStatus(ObjectLockLegalHoldStatus&& value) { SetStatus(std::move(value)); return *this;}

  private:

    ObjectLockLegalHoldStatus m_status;
    bool m_statusHasBeenSet;
  };

} // namespace Model
} // namespace S3
} // namespace Aws
