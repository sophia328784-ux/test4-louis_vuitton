package com.vuitton.android.presentation.screen.connectivity.lightup.models;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.tr;
import defpackage.v40;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVLightUpTrackingUiModelKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f56237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f56238b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56239a;

        static {
            int[] iArr = new int[LVLightUpDeviceType.values().length];
            try {
                iArr[LVLightUpDeviceType.KEEPALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVLightUpDeviceType.X408PAIR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56239a = iArr;
        }
    }

    static {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        f56237a = "1A5V3U";
        f56238b = "M44770";
    }

    public static final Hit a(LVLightUpTrackingUiModel lVLightUpTrackingUiModel) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String strG;
        String strG2;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String strG3;
        String str18;
        String str19;
        String str20;
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.GeneralScreen) {
            int i2 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.GeneralScreen) lVLightUpTrackingUiModel).f56222a.ordinal()];
            if (i2 == 1) {
                str20 = "LVPass/IoT/Keepall";
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                str20 = "LVPass/IoT/Sneakers";
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, str20, "", "IoT", null, 17, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.PairingScreen) {
            int i3 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.PairingScreen) lVLightUpTrackingUiModel).f56231a.ordinal()];
            if (i3 == 1) {
                str19 = "LVPass/IoT/Keepall/Pairing";
            } else {
                if (i3 != 2) {
                    v40.g();
                    return null;
                }
                str19 = "LVPass/IoT/Sneakers/Pairing";
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, str19, "", "IoT", null, 17, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.ResultScreen) {
            int i4 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.ResultScreen) lVLightUpTrackingUiModel).f56233a.ordinal()];
            if (i4 == 1) {
                str18 = "LVPass/IoT/Keepall/Pairing/Result";
            } else {
                if (i4 != 2) {
                    v40.g();
                    return null;
                }
                str18 = "LVPass/IoT/Sneakers/Pairing/Result";
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, str18, "", "IoT", null, 17, null);
        }
        boolean z = lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.ProductPageScreen;
        String str21 = f56238b;
        String str22 = f56237a;
        if (z) {
            int i5 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.ProductPageScreen) lVLightUpTrackingUiModel).f56232a.ordinal()];
            if (i5 == 1) {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                strG3 = tr.g("LVPass/IoT/Keepall/", str21);
            } else {
                if (i5 != 2) {
                    v40.g();
                    return null;
                }
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                strG3 = tr.g("LVPass/IoT/Sneakers/", str22);
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, strG3, "", "IoT", null, 17, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.FaqScreen) {
            int i6 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.FaqScreen) lVLightUpTrackingUiModel).f56221a.ordinal()];
            if (i6 == 1) {
                str17 = "LVPass/IoT/Keepall/FAQ";
            } else {
                if (i6 != 2) {
                    v40.g();
                    return null;
                }
                str17 = "LVPass/IoT/Sneakers/FAQ";
            }
            return new Hit.ScreenHit.DefaultScreenHit(null, str17, "", "IoT", null, 17, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.NeedHelpClickEvent) {
            int i7 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.NeedHelpClickEvent) lVLightUpTrackingUiModel).f56223a.ordinal()];
            if (i7 == 1) {
                str16 = "LVPass/IoT/Keepall/FAQ";
            } else {
                if (i7 != 2) {
                    v40.g();
                    return null;
                }
                str21 = str22;
                str16 = "LVPass/IoT/Sneakers/FAQ";
            }
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str21);
            return new Hit.EventHit.DefaultEventHit(null, str16, "FAQ", "IoT", null, null, CollectionsKt.O(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str21)))), 49, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.OpenSectionEvent) {
            int i8 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.OpenSectionEvent) lVLightUpTrackingUiModel).f56226a.ordinal()];
            if (i8 == 1) {
                str15 = "keepall_section";
            } else {
                if (i8 != 2) {
                    v40.g();
                    return null;
                }
                str15 = "sneakers_section";
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT", str15, "IoT", null, null, null, 113, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.PairButtonClickEvent) {
            int i9 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.PairButtonClickEvent) lVLightUpTrackingUiModel).f56227a.ordinal()];
            if (i9 == 1) {
                str14 = "LVPass/IoT/Keepall";
            } else {
                if (i9 != 2) {
                    v40.g();
                    return null;
                }
                str14 = "LVPass/IoT/Sneakers";
            }
            return new Hit.EventHit.DefaultEventHit(null, str14, "Pairing", "IoT", null, null, null, 113, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent) {
            int i10 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.PairButtonFromBottomSheetClickEvent) lVLightUpTrackingUiModel).f56228a.ordinal()];
            if (i10 == 1) {
                str13 = "Pairing_Keepall";
            } else {
                if (i10 != 2) {
                    v40.g();
                    return null;
                }
                str13 = "Pairing_Sneakers";
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT", str13, "IoT", null, null, null, 113, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.PairNoDeviceFoundCancelButtonClickEvent) {
            int i11 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.PairNoDeviceFoundCancelButtonClickEvent) lVLightUpTrackingUiModel).f56230a.ordinal()];
            if (i11 == 1) {
                str12 = "LVPass/IoT/Keepall/Pairing";
            } else {
                if (i11 != 2) {
                    v40.g();
                    return null;
                }
                str12 = "LVPass/IoT/Sneakers/Pairing";
            }
            return new Hit.EventHit.DefaultEventHit(null, str12, "Cancel", "IoT", "cancel", null, null, 97, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.PairNoDeviceFoundBottomSheetEvent) {
            int i12 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.PairNoDeviceFoundBottomSheetEvent) lVLightUpTrackingUiModel).f56229a.ordinal()];
            if (i12 == 1) {
                str11 = "LVPass/IoT/Keepall/Pairing";
            } else {
                if (i12 != 2) {
                    v40.g();
                    return null;
                }
                str11 = "LVPass/IoT/Sneakers/Pairing";
            }
            return new Hit.EventHit.DefaultEventHit(null, str11, "pairing_error_notfound", "IoT", Payload.RESPONSE, null, null, 97, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.ConfirmPairingButtonClickEvent) {
            int i13 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.ConfirmPairingButtonClickEvent) lVLightUpTrackingUiModel).f56216a.ordinal()];
            if (i13 == 1) {
                str10 = "LVPass/IoT/Keepall/Pairing/Result";
            } else {
                if (i13 != 2) {
                    v40.g();
                    return null;
                }
                str10 = "LVPass/IoT/Sneakers/Pairing/Result";
            }
            return new Hit.EventHit.DefaultEventHit(null, str10, "Confirm_pairing", "IoT", "confirm", null, null, 97, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.CancelPairingWhenDeviceFoundButtonClickEvent) {
            int i14 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.CancelPairingWhenDeviceFoundButtonClickEvent) lVLightUpTrackingUiModel).f56215a.ordinal()];
            if (i14 == 1) {
                str9 = "LVPass/IoT/Keepall/Pairing/Result";
            } else {
                if (i14 != 2) {
                    v40.g();
                    return null;
                }
                str9 = "LVPass/IoT/Sneakers/Pairing/Result";
            }
            return new Hit.EventHit.DefaultEventHit(null, str9, "Cancel_pairing", "IoT", "cancel", null, null, 97, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.SetPresetEvent) {
            LVLightUpTrackingUiModel.SetPresetEvent setPresetEvent = (LVLightUpTrackingUiModel.SetPresetEvent) lVLightUpTrackingUiModel;
            int i15 = WhenMappings.f56239a[setPresetEvent.f56235b.ordinal()];
            if (i15 == 1) {
                SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                strG2 = tr.g("LVPass/IoT/Keepall/", str21);
                str8 = "keepall";
            } else {
                if (i15 != 2) {
                    v40.g();
                    return null;
                }
                SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                strG2 = tr.g("LVPass/IoT/Sneakers/", str22);
                str8 = "sneakers";
                str21 = str22;
            }
            String str23 = strG2;
            String str24 = setPresetEvent.f56234a;
            AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(tr.g("Preset_", str24));
            AdditionalProperty.ContentType contentType = new AdditionalProperty.ContentType(str8);
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str21);
            return new Hit.EventHit.DefaultEventHit(null, str23, str24, "IoT", "preset_selection", null, CollectionsKt.P(contentId, contentType, new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str21)))), 33, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.OnModeClickedEvent) {
            LVLightUpTrackingUiModel.OnModeClickedEvent onModeClickedEvent = (LVLightUpTrackingUiModel.OnModeClickedEvent) lVLightUpTrackingUiModel;
            int i16 = WhenMappings.f56239a[onModeClickedEvent.f56225b.ordinal()];
            if (i16 == 1) {
                SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                strG = tr.g("LVPass/IoT/Keepall/", str21);
            } else {
                if (i16 != 2) {
                    v40.g();
                    return null;
                }
                SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
                strG = tr.g("LVPass/IoT/Sneakers/", str22);
                str21 = str22;
            }
            String str25 = strG;
            String str26 = onModeClickedEvent.f56224a;
            Locale locale = Locale.ENGLISH;
            locale.getClass();
            String lowerCase = str26.toLowerCase(locale);
            lowerCase.getClass();
            String strConcat = "Enable_".concat(lowerCase);
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str21);
            return new Hit.EventHit.DefaultEventHit(null, str25, strConcat, "IoT", "power_setup", null, CollectionsKt.O(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str21)))), 33, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.FaqCategoryClickEvent) {
            LVLightUpTrackingUiModel.FaqCategoryClickEvent faqCategoryClickEvent = (LVLightUpTrackingUiModel.FaqCategoryClickEvent) lVLightUpTrackingUiModel;
            int i17 = WhenMappings.f56239a[faqCategoryClickEvent.f56220b.ordinal()];
            if (i17 == 1) {
                str7 = "LVPass/IoT/Keepall/FAQ";
            } else {
                if (i17 != 2) {
                    v40.g();
                    return null;
                }
                str7 = "LVPass/IoT/Sneakers/FAQ";
            }
            return new Hit.EventHit.DefaultEventHit(null, str7, tr.g("FAQ_", faqCategoryClickEvent.f56219a), "IoT", null, null, null, 113, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.ConnectivityPageConnectToAPairedObjectEvent) {
            int i18 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.ConnectivityPageConnectToAPairedObjectEvent) lVLightUpTrackingUiModel).f56217a.ordinal()];
            if (i18 == 1) {
                str5 = "Connection_Keepall_with_bluetooth";
                str6 = "LVPass/IoT/Keepall";
            } else {
                if (i18 != 2) {
                    v40.g();
                    return null;
                }
                str5 = "Connection_Sneakers_with_bluetooth";
                str6 = "LVPass/IoT/Sneakers";
            }
            return new Hit.EventHit.DefaultEventHit(null, str6, str5, "IoT", "connection", null, null, 97, null);
        }
        if (lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.DiscoverVideoClickEvent) {
            int i19 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.DiscoverVideoClickEvent) lVLightUpTrackingUiModel).f56218a.ordinal()];
            if (i19 == 1) {
                str3 = "Discover_Keepall";
                str4 = "LVPass/IoT/Keepall";
            } else {
                if (i19 != 2) {
                    v40.g();
                    return null;
                }
                str3 = "Discover_Sneakers";
                str4 = "LVPass/IoT/Sneakers";
            }
            return new Hit.EventHit.DefaultEventHit(null, str4, str3, "IoT", null, null, null, 113, null);
        }
        if (!(lVLightUpTrackingUiModel instanceof LVLightUpTrackingUiModel.UnPairObjectEvent)) {
            v40.g();
            return null;
        }
        int i20 = WhenMappings.f56239a[((LVLightUpTrackingUiModel.UnPairObjectEvent) lVLightUpTrackingUiModel).f56236a.ordinal()];
        if (i20 == 1) {
            str = "Unpair_Keepall";
            str2 = "LVPass/IoT/Keepall";
        } else {
            if (i20 != 2) {
                v40.g();
                return null;
            }
            str = "Unpair_Sneakers";
            str2 = "LVPass/IoT/Sneakers";
            str21 = str22;
        }
        String str27 = str;
        SkuIdUiModel.f61763c.getClass();
        SkuIdUiModel.Companion.b(str21);
        return new Hit.EventHit.DefaultEventHit(null, str2, str27, "IoT", Payload.RESPONSE, null, CollectionsKt.O(new AdditionalProperty.ProductSku(CollectionsKt.O(new SkuId(str21)))), 33, null);
    }
}
