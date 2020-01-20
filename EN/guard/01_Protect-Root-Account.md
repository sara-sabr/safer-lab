# Protect Root / Global Admins Account

## Objective

Protect root or administrator account(s) used by the devices hosted on the SAFER lab service.

## Key Considerations

* [ ] Implement root and administrator passwords tied to SAFER lab domain that will not be shared.
* [ ] Implement a mechanism for enforcing access authorizations.
* [ ] Configure appropriate alerts on root/master accounts to detect a potential compromise, in accordance with the [GC Event Logging Guidance](https://www.gcpedia.gc.ca/gcwiki/images/e/e3/GC_Event_Logging_Strategy.pdf)

## Validation

* [ ] Confirm password policies are configured and set for each device.
* [ ] Confirm passwords are unique to each device.
* [ ] Confirm on return of device, the administrator's account password was not changed.
* [ ] Confirm all login attempts will administrator accounts are logged and sent to central SIEM.

## Additional Considerations

* [ ] Leverage enterprise services such as Administrative Access Control System (AACS) for Privileged Access Management (PAM), Attribute-based access control (ABAC).

## Applicable Service Models

* Mac
* ChromeOS
* Linux

## References

1. CSE Top 10 #3
2. Refer to the [GC Event Logging Guidance](https://www.gcpedia.gc.ca/gcwiki/images/e/e3/GC_Event_Logging_Strategy.pdf)
3. Related security controls: AC‑2, AC‑2(1), AC‑3, AC‑5, AC‑6, AC‑6(5), AC‑6(10), AC‑7, AC‑9, AC‑19, AC‑20(3), IA‑2, IA‑2(1), IA‑2(2), IA‑2(11), IA‑4, IA‑5, IA‑5(1), IA‑5(6), IA‑5(7), IA‑5(13), IA‑6, IA‑8
4. [Ubuntu SSSD and Active Directory](https://help.ubuntu.com/lts/serverguide/sssd-ad.html)
5. [Integrate Active Directory using Directory Utility on Mac](https://support.apple.com/en-ca/guide/directory-utility/diru39a25fa2/mac)
6. [Manage Chrome devices with Active Directory](https://support.google.com/chrome/a/answer/7497916?hl=en)
