package com.perfectcorp.perfectlib;

import android.net.Uri;
import android.text.TextUtils;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import defpackage.xx0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SkuInfo {
    public static final SkuInfo NULL = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerfectEffect f39941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BeautyMode f39942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39943c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39945f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ActionUrlType f39946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f39947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f39948j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final VtoDetail f39949k;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkuInfo$1, reason: invalid class name */
    class AnonymousClass1 extends SkuInfo {
        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final String getName() {
            return "";
        }

        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final String getThumbnailUrl() {
            return "";
        }

        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final VtoDetail getVtoDetail() {
            return this.f39949k;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.SkuInfo$2, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39950a;

        static {
            int[] iArr = new int[PerfectEffect.values().length];
            f39950a = iArr;
            try {
                iArr[PerfectEffect.RING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39950a[PerfectEffect.BRACELET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39950a[PerfectEffect.WATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39950a[PerfectEffect.NECKLACE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ActionUrlType {
        public static final ActionUrlType HIDDEN;
        public static final ActionUrlType MORE_INFO;
        public static final ActionUrlType SHOPPING;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ ActionUrlType[] f39951a;

        static {
            ActionUrlType actionUrlType = new ActionUrlType("SHOPPING", 0);
            SHOPPING = actionUrlType;
            ActionUrlType actionUrlType2 = new ActionUrlType("MORE_INFO", 1);
            MORE_INFO = actionUrlType2;
            ActionUrlType actionUrlType3 = new ActionUrlType("HIDDEN", 2);
            HIDDEN = actionUrlType3;
            f39951a = new ActionUrlType[]{actionUrlType, actionUrlType2, actionUrlType3};
        }

        public static ActionUrlType valueOf(String str) {
            return (ActionUrlType) Enum.valueOf(ActionUrlType.class, str);
        }

        public static ActionUrlType[] values() {
            return (ActionUrlType[]) f39951a.clone();
        }
    }

    public static final class Palette extends SkuInfo {
        public final String l;
        public final String m;
        public volatile List n;

        public Palette(ProductInfo productInfo, String str, com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar) {
            super(productInfo, str, eVar);
            String strB = eVar.m;
            if (TextUtils.isEmpty(strB)) {
                String str2 = eVar.l;
                int i2 = Nulls.f42040a;
                strB = Strings.b(str2);
            }
            this.l = strB;
            Configuration.ImageSource imageSource = productInfo.f39798c;
            String str3 = eVar.g;
            int i3 = Nulls.f42040a;
            this.m = DownloadImageHelper.b(imageSource, Strings.b(str3));
        }

        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final String getName() {
            return this.l;
        }

        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final String getThumbnailUrl() {
            return this.m;
        }
    }

    public static final class Pattern extends SkuInfo {
        public final String l;
        public final String m;

        /* JADX WARN: Code duplicated, block: B:21:0x006a  */
        /* JADX WARN: Code duplicated, block: B:23:0x0070  */
        /* JADX WARN: Code duplicated, block: B:25:0x007b  */
        /* JADX WARN: Code duplicated, block: B:32:0x0089  */
        /* JADX WARN: Code duplicated, block: B:34:0x008f  */
        /* JADX WARN: Code duplicated, block: B:37:0x0096  */
        /* JADX WARN: Code duplicated, block: B:40:0x009e  */
        /* JADX WARN: Code duplicated, block: B:41:0x00a9  */
        /* JADX WARN: Code duplicated, block: B:43:0x00b7  */
        /* JADX WARN: Code duplicated, block: B:44:0x00c0  */
        public Pattern(ProductInfo productInfo, String str, com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar) {
            PerfectEffect perfectEffect;
            String strC;
            int i2;
            com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b bVarA;
            String strB;
            com.perfectcorp.perfectlib.ph.database.ymk.sku.e.b.c cVar;
            YMKPrimitiveData.Pattern patternW;
            super(productInfo, str, eVar);
            com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a aVar = productInfo.f39804k;
            String str2 = eVar.m;
            int i3 = Nulls.f42040a;
            this.l = Strings.b(str2);
            if (aVar != null) {
                List<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a.C0154b> list = aVar.eyewear_items;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a.C0152a c0152a = aVar.eyewear_attributes;
                if (list.isEmpty() || c0152a.frames.isEmpty()) {
                    perfectEffect = productInfo.f39796a;
                    if (perfectEffect == PerfectEffect.EARRINGS) {
                        strC = "";
                    } else {
                        i2 = AnonymousClass2.f39950a[perfectEffect.ordinal()];
                        if (i2 != 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                            bVarA = eVar.a();
                            if (bVarA != null || (cVar = bVarA.patternGeneral) == null) {
                                strB = eVar.f41292a;
                            } else {
                                strB = cVar.guid;
                            }
                        } else {
                            strB = eVar.b();
                        }
                        patternW = TemplateUtils.w(strB);
                        if (patternW != null) {
                            strC = SubItemInfo.c(Strings.b(patternW.f40824b));
                        } else if (TextUtils.isEmpty(eVar.a().patternGeneral.thumbnailPath)) {
                            strC = "";
                        } else {
                            strC = eVar.a().patternGeneral.thumbnailPath;
                        }
                    }
                } else {
                    for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a.C0154b c0154b : list) {
                        if (this.f39943c.equals(c0154b.item_guid)) {
                            String str3 = c0154b.frame_id;
                            for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a.C0152a.C0153a c0153a : c0152a.frames) {
                                if (str3.equals(c0153a.frame_id) && !TextUtils.isEmpty(c0153a.frame_thumbnail)) {
                                    strC = DownloadImageHelper.b(productInfo.f39798c, c0153a.frame_thumbnail);
                                }
                            }
                        }
                    }
                    perfectEffect = productInfo.f39796a;
                    if (perfectEffect == PerfectEffect.EARRINGS) {
                        strC = "";
                    } else {
                        i2 = AnonymousClass2.f39950a[perfectEffect.ordinal()];
                        if (i2 != 1) {
                            bVarA = eVar.a();
                            if (bVarA != null) {
                                strB = eVar.f41292a;
                            } else {
                                strB = eVar.f41292a;
                            }
                        } else {
                            bVarA = eVar.a();
                            if (bVarA != null) {
                                strB = eVar.f41292a;
                            } else {
                                strB = eVar.f41292a;
                            }
                        }
                        patternW = TemplateUtils.w(strB);
                        if (patternW != null) {
                            strC = SubItemInfo.c(Strings.b(patternW.f40824b));
                        } else if (TextUtils.isEmpty(eVar.a().patternGeneral.thumbnailPath)) {
                            strC = eVar.a().patternGeneral.thumbnailPath;
                        } else {
                            strC = "";
                        }
                    }
                }
            } else {
                perfectEffect = productInfo.f39796a;
                if (perfectEffect == PerfectEffect.EARRINGS) {
                    strC = "";
                } else {
                    i2 = AnonymousClass2.f39950a[perfectEffect.ordinal()];
                    if (i2 != 1) {
                        bVarA = eVar.a();
                        if (bVarA != null) {
                            strB = eVar.f41292a;
                        } else {
                            strB = eVar.f41292a;
                        }
                    } else {
                        bVarA = eVar.a();
                        if (bVarA != null) {
                            strB = eVar.f41292a;
                        } else {
                            strB = eVar.f41292a;
                        }
                    }
                    patternW = TemplateUtils.w(strB);
                    if (patternW != null) {
                        strC = SubItemInfo.c(Strings.b(patternW.f40824b));
                    } else if (TextUtils.isEmpty(eVar.a().patternGeneral.thumbnailPath)) {
                        strC = eVar.a().patternGeneral.thumbnailPath;
                    } else {
                        strC = "";
                    }
                }
            }
            this.m = strC;
        }

        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final String getName() {
            return this.l;
        }

        @Override // com.perfectcorp.perfectlib.SkuInfo
        public final String getThumbnailUrl() {
            return this.m;
        }
    }

    public SkuInfo(ProductInfo productInfo, String str, com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar) {
        ActionUrlType actionUrlType;
        this.f39941a = productInfo.f39796a;
        BeautyMode beautyMode = productInfo.f39797b;
        this.f39942b = beautyMode;
        String str2 = productInfo.f39799e;
        int i2 = Nulls.f42040a;
        Strings.b(str2);
        this.f39943c = Strings.b(eVar.f41292a);
        this.d = productInfo.d;
        this.f39944e = Strings.b(str);
        this.f39945f = Strings.b(eVar.n);
        String strB = Strings.b(eVar.f41295e);
        String strB2 = Strings.b(eVar.f41296f);
        if (!TextUtils.isEmpty(strB2)) {
            this.g = b(strB2);
            actionUrlType = ActionUrlType.MORE_INFO;
        } else if (TextUtils.isEmpty(strB)) {
            this.g = "";
            actionUrlType = ActionUrlType.HIDDEN;
        } else {
            this.g = b(strB);
            actionUrlType = ActionUrlType.SHOPPING;
        }
        this.f39946h = actionUrlType;
        this.f39947i = eVar.f41294c == 1;
        this.f39948j = Strings.b(eVar.s);
        this.f39949k = (beautyMode == BeautyMode.EARRINGS || (beautyMode == BeautyMode.NAIL && !TextUtils.isEmpty(eVar.t))) ? new VtoDetail.PatternEarringsOrNail(productInfo, this, eVar) : SkuTemplateUtils.b(beautyMode) ? new VtoDetail.PatternMajor(productInfo, this) : new VtoDetail.PaletteMajor(productInfo, this);
    }

    public static SkuInfo a(ProductInfo productInfo, String str, com.perfectcorp.perfectlib.ph.database.ymk.sku.e eVar) {
        return SkuTemplateUtils.b(productInfo.f39797b) ? new Pattern(productInfo, str, eVar) : new Palette(productInfo, str, eVar);
    }

    public static String b(String str) {
        Uri uri = Uri.parse(str);
        if ("ymk".equals(uri.getScheme()) || "amb".equals(uri.getScheme())) {
            String queryParameter = uri.getQueryParameter("RedirectUrl");
            if (!TextUtils.isEmpty(queryParameter)) {
                return queryParameter;
            }
        }
        return str;
    }

    public static List c(SkuInfo skuInfo) {
        List listU;
        if (!(skuInfo instanceof Palette)) {
            return Collections.EMPTY_LIST;
        }
        Palette palette = (Palette) skuInfo;
        if (palette.n == null) {
            int i2 = 9;
            if (skuInfo.f39942b == BeautyMode.NAIL) {
                List listC = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.c(YMKDatabase.b(), skuInfo.f39943c, "1");
                if (listC.isEmpty()) {
                    listU = ImmutableList.u(Lists.c(Nulls.b(com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(skuInfo.f39943c))), new xx0(i2)));
                } else {
                    YMKPrimitiveData.Pattern patternW = TemplateUtils.w(((com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) listC.get(0)).f41251a);
                    listU = (patternW == null || TextUtils.isEmpty(patternW.t) || TextUtils.isEmpty(patternW.u)) ? Collections.EMPTY_LIST : ImmutableList.z(Integer.valueOf(TemplateUtils.v(patternW.u)));
                }
            } else {
                listU = ImmutableList.u(Lists.c(Nulls.b(com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(skuInfo.f39943c))), new xx0(i2)));
            }
            palette.n = listU;
            if (palette.n.isEmpty()) {
                List listB = com.perfectcorp.perfectlib.ph.database.ymk.sku.g.b(YMKDatabase.b(), Collections.singletonList(skuInfo.f39943c));
                palette.n = (listB == null || listB.isEmpty()) ? Collections.EMPTY_LIST : ImmutableList.u(Lists.c(com.perfectcorp.perfectlib.ph.template.e.g(((com.perfectcorp.perfectlib.ph.database.ymk.sku.e) listB.get(0)).a().paletteColor), new xx0(8)));
            }
        }
        return palette.n;
    }

    public String getActionUrl() {
        return this.g;
    }

    public ActionUrlType getActionUrlType() {
        return this.f39946h;
    }

    public String getCustomerInfo() {
        return this.f39948j;
    }

    public String getGuid() {
        return this.f39944e;
    }

    public String getLongName() {
        return this.f39945f;
    }

    public abstract String getName();

    public PerfectEffect getPerfectEffect() {
        return this.f39941a;
    }

    public String getProductGuid() {
        return this.d;
    }

    public abstract String getThumbnailUrl();

    public VtoDetail getVtoDetail() {
        return this.f39949k;
    }

    public boolean isHot() {
        return this.f39947i;
    }

    public String toString() {
        return "guid:" + this.f39943c + ", mappedID:" + this.f39944e;
    }

    public SkuInfo() {
        this.f39941a = null;
        this.f39942b = BeautyMode.UNDEFINED;
        this.f39943c = "";
        this.d = EffectId.INVALID_ID;
        this.f39944e = EffectId.INVALID_ID;
        this.f39945f = "";
        this.g = "";
        this.f39946h = ActionUrlType.HIDDEN;
        this.f39947i = false;
        this.f39948j = "";
        this.f39949k = VtoDetail.f40003c;
    }
}
