package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import defpackage.md;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class EffectId {
    public static final String INVALID_ID = "N/A";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerfectEffect f39555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f39557c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f39558e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f39559f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f39560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImmutableList f39561i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final NailPosition f39562j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RingPosition f39563k;
    public final ImmutableList l;
    public final EffectConfig m;
    public final VtoSetting.Parameter n;
    public final com.perfectcorp.perfectlib.ph.camera.a o;
    public final String p;
    public final String q;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PerfectEffect f39566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f39567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f39568c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f39569e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f39570f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f39571h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f39572i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public NailPosition f39573j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public List f39574k;
        public EffectConfig l;
        public VtoSetting.Parameter m;
        public com.perfectcorp.perfectlib.ph.camera.a n;

        public Builder(PerfectEffect perfectEffect) {
            List list = Collections.EMPTY_LIST;
            this.f39572i = list;
            this.f39574k = list;
            this.l = EffectConfig.DEFAULT;
            Objects.requireNonNull(perfectEffect);
            this.f39566a = perfectEffect;
        }

        public final EffectId a() {
            if (!TextUtils.isEmpty(this.f39567b) && !TextUtils.isEmpty(this.f39568c)) {
                md.k("Only can setup one of skuSetGuid and skuGuid, both of them are not empty!");
                return null;
            }
            if (this.f39572i.size() == this.f39574k.size()) {
                return new EffectId(this);
            }
            md.k("Size of intensity and color list is not the same!");
            return null;
        }

        public final void b(List list) {
            Set set = MoreCollections.f39434a;
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
            this.f39572i = list;
        }

        public final void c(List list) {
            Set set = MoreCollections.f39434a;
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
            this.f39574k = list;
        }
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.perfectcorp.perfectlib.EffectId$1] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.perfectcorp.perfectlib.EffectId$2] */
    public EffectId(Builder builder) {
        this.f39555a = builder.f39566a;
        this.f39556b = b(builder.f39567b);
        this.f39557c = b(builder.f39568c);
        this.d = b(builder.d);
        this.f39558e = b(builder.f39569e);
        this.f39559f = b(builder.f39570f);
        this.g = b(builder.g);
        this.f39560h = b(builder.f39571h);
        this.f39561i = ImmutableList.u(builder.f39572i);
        this.f39562j = builder.f39573j;
        VtoSetting.Parameter parameter = builder.m;
        this.f39563k = parameter instanceof com.perfectcorp.perfectlib.ph.utility.b ? ((com.perfectcorp.perfectlib.ph.utility.b) parameter).l : null;
        this.l = ImmutableList.u(builder.f39574k);
        this.m = builder.l;
        this.n = builder.m;
        this.o = builder.n;
        this.p = new Callable<String>() { // from class: com.perfectcorp.perfectlib.EffectId.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String call() {
                EffectId effectId = EffectId.this;
                BeautyMode beautyMode = effectId.f39555a.beautyMode;
                if (beautyMode == BeautyMode.EARRINGS) {
                    return EffectId.INVALID_ID;
                }
                if (beautyMode == BeautyMode.NAIL) {
                    return effectId.f39558e;
                }
                boolean zB = SkuTemplateUtils.b(beautyMode);
                EffectId effectId2 = EffectId.this;
                if (zB) {
                    return effectId2.f39558e;
                }
                boolean zF = SubItemInfo.f(effectId2.f39555a.beautyMode);
                EffectId effectId3 = EffectId.this;
                return zF ? effectId3.f39558e : effectId3.d;
            }
        }.call();
        this.q = new Callable<String>() { // from class: com.perfectcorp.perfectlib.EffectId.2
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String call() {
                EffectId effectId = EffectId.this;
                BeautyMode beautyMode = effectId.f39555a.beautyMode;
                if (beautyMode == BeautyMode.EARRINGS) {
                    return effectId.f39558e;
                }
                if (beautyMode == BeautyMode.NAIL) {
                    return EffectId.INVALID_ID;
                }
                boolean zB = SkuTemplateUtils.b(beautyMode);
                EffectId effectId2 = EffectId.this;
                if (zB) {
                    return effectId2.d;
                }
                boolean zF = SubItemInfo.f(effectId2.f39555a.beautyMode);
                EffectId effectId3 = EffectId.this;
                return zF ? effectId3.f39559f : effectId3.f39558e;
            }
        }.call();
    }

    public static Builder a(EffectId effectId) {
        Builder builder = new Builder(effectId.f39555a);
        builder.f39567b = c(effectId.f39556b);
        builder.f39568c = c(effectId.f39557c);
        builder.d = c(effectId.d);
        builder.f39569e = c(effectId.f39558e);
        builder.f39570f = c(effectId.f39559f);
        builder.g = c(effectId.g);
        builder.f39571h = c(effectId.f39560h);
        builder.b(effectId.f39561i);
        builder.f39573j = effectId.f39562j;
        builder.c(effectId.l);
        EffectConfig effectConfig = effectId.m;
        if (effectConfig == null) {
            effectConfig = EffectConfig.DEFAULT;
        }
        builder.l = effectConfig;
        builder.m = effectId.n;
        builder.n = effectId.o;
        return builder;
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? INVALID_ID : str;
    }

    public static String c(String str) {
        return INVALID_ID.equalsIgnoreCase(str) ? "" : str;
    }

    public final String getFunStickerGuid() {
        return this.g;
    }

    public final List<Integer> getIntensities() {
        return this.f39561i;
    }

    public final NailPosition getNailPosition() {
        return this.f39562j;
    }

    public final String getPaletteGuid() {
        return this.p;
    }

    public final String getPatternGuid() {
        return this.q;
    }

    public final String getProductGuid() {
        return this.f39557c;
    }

    public final RingPosition getRingPosition() {
        return this.f39563k;
    }

    public final String getSkuGuid() {
        return this.d;
    }

    public final String getSkuSetGuid() {
        return this.f39556b;
    }

    public final PerfectEffect getType() {
        return this.f39555a;
    }

    public final String getWearingStyleGuid() {
        return this.f39560h;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("EffectId");
        toStringHelper.b("type", this.f39555a.name());
        toStringHelper.b("skuSetGuid", this.f39556b);
        toStringHelper.b("skuGuid", this.f39557c);
        toStringHelper.b("skuItemGuid", this.d);
        toStringHelper.b("subItemGuid", this.f39558e);
        toStringHelper.b("subSubItemGuid", this.f39559f);
        toStringHelper.b("funStickerGuid", this.g);
        toStringHelper.b("wearingStyleGuid", this.f39560h);
        toStringHelper.b("intensities", this.f39561i);
        toStringHelper.b("nailPosition", this.f39562j);
        return toStringHelper.toString();
    }

    public EffectId(BeautyMode beautyMode, List list) {
        Builder builder = new Builder(PerfectEffect.of(beautyMode, ItemSubType.NONE));
        builder.b(list);
        this(builder);
    }
}
