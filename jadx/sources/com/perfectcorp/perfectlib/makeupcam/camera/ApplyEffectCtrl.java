package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.MutableFloat;
import android.util.Pair;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLive3DFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveBronzerFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveCubeEyewearFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveEyeFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFaceContourFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFoundationFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveLipStickFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveTeethWhitenFilter;
import com.cyberlink.clgpuimage.cosmetic.ab;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.debug.PerformanceCounter;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.ImageUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.EffectId;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.internal.NecklaceFilter;
import com.perfectcorp.perfectlib.internal.NecklaceObject3dModel;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.jniproxy.UIShimmer;
import com.perfectcorp.perfectlib.jniproxy.VN_BlushType;
import com.perfectcorp.perfectlib.jniproxy.VN_EyebrowMode;
import com.perfectcorp.perfectlib.jniproxy.VN_HairDyeMode;
import com.perfectcorp.perfectlib.jniproxy.VN_Lipliner_Type;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateWorkarounds;
import com.perfectcorp.perfectlib.makeupcam.utility.BitmapUtils;
import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheBuilder;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.com.google.common.collect.Range;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.az;
import defpackage.b21;
import defpackage.d21;
import defpackage.f7;
import defpackage.fc;
import defpackage.g7;
import defpackage.i7;
import defpackage.k7;
import defpackage.md;
import defpackage.n00;
import defpackage.no0;
import defpackage.o60;
import defpackage.p3;
import defpackage.tr;
import defpackage.v7;
import java.io.File;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
public final class ApplyEffectCtrl {
    public static final List G;
    public static final ImmutableSet H;
    public static final ImmutableSet I;
    public static final Set J;
    public static final ReentrantReadWriteLock.ReadLock K;
    public static final ReentrantReadWriteLock.WriteLock L;
    public static final ExecutorService M;
    public static final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d N;
    public static final Range O;
    public static final Range P;
    public final boolean A;
    public final InvalidEyeBuffer B = new InvalidEyeBuffer();
    public final Object C = new Object();
    public final Object D = new Object();
    public final Object E;
    public final Object F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableSet f40483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Predicate f40484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LiveMakeupCtrlInterface f40485c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CLMakeupLiveFilter f40486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NecklaceFilter f40487f;
    public final AccessoryCamWrapper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BaseVenus f40488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LiveSettingCtrl f40489i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f40490j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f40491k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final boolean z;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$1, reason: invalid class name */
    class AnonymousClass1 extends CacheLoader<BeautyMode, ConfigurationBuilder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ boolean f40492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ ConfigurationBuilder f40493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ ApplyEffectCtrl f40494c;

        @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
        public final Object a(Object obj) {
            ApplyEffectCtrl applyEffectCtrl = this.f40494c;
            boolean z = this.f40492a;
            applyEffectCtrl.getClass();
            ConfigurationBuilder configurationBuilder = new ConfigurationBuilder(applyEffectCtrl, (BeautyMode) obj, z);
            if (this.f40493b.g) {
                configurationBuilder.g = true;
            }
            return configurationBuilder;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$2, reason: invalid class name */
    class AnonymousClass2 implements Function<YMKPrimitiveData.Look, String> {
        @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
        public final Object apply(Object obj) {
            return ((YMKPrimitiveData.Look) obj).f40781a;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$4, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f40495a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f40496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f40497c;
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[YMKPrimitiveData.LipstickType.values().length];
            d = iArr;
            try {
                iArr[YMKPrimitiveData.LipstickType.THICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.GLOSS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.ESTEE_HIGH_GLOSS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.ESTEE_WET_PEARL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.TOM_FORD_METALLIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.HOLOGRAPHIC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.BRIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                d[YMKPrimitiveData.LipstickType.NONE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[YMKPrimitiveData.Mask.Position.values().length];
            f40497c = iArr2;
            try {
                iArr2[YMKPrimitiveData.Mask.Position.HIGHLIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f40497c[YMKPrimitiveData.Mask.Position.CONTOUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr3 = new int[YMKPrimitiveData.TextureSupportedMode.values().length];
            f40496b = iArr3;
            try {
                iArr3[YMKPrimitiveData.TextureSupportedMode.CUBE_EYEWEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f40496b[YMKPrimitiveData.TextureSupportedMode.REAL_3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[BeautyMode.values().length];
            f40495a = iArr4;
            try {
                iArr4[BeautyMode.EYE_SHADOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f40495a[BeautyMode.EYE_LINES.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f40495a[BeautyMode.EYE_LASHES.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f40495a[BeautyMode.LIP_STICK.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f40495a[BeautyMode.BLUSH.ordinal()] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f40495a[BeautyMode.EYE_CONTACT.ordinal()] = 6;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f40495a[BeautyMode.SKIN_TONER.ordinal()] = 7;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f40495a[BeautyMode.EYE_BROW.ordinal()] = 8;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f40495a[BeautyMode.FACE_ART.ordinal()] = 9;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f40495a[BeautyMode.FACE_ART_LAYER_2.ordinal()] = 10;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f40495a[BeautyMode.FACE_CONTOUR.ordinal()] = 11;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f40495a[BeautyMode.LIP_LINER.ordinal()] = 12;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f40495a[BeautyMode.BRONZER.ordinal()] = 13;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f40495a[BeautyMode.CONCEALER.ordinal()] = 14;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f40495a[BeautyMode.BACKGROUND.ordinal()] = 15;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f40495a[BeautyMode.HAIR_DYE.ordinal()] = 16;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f40495a[BeautyMode.REAL_3D_EYEWEAR.ordinal()] = 17;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f40495a[BeautyMode.EARRINGS.ordinal()] = 18;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f40495a[BeautyMode.TEETH_WHITENER.ordinal()] = 19;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f40495a[BeautyMode.FACE_RESHAPE.ordinal()] = 20;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f40495a[BeautyMode.FACE_RESHAPE_LEFT.ordinal()] = 21;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f40495a[BeautyMode.FACE_RESHAPE_RIGHT.ordinal()] = 22;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f40495a[BeautyMode.CHIN_RESHAPE.ordinal()] = 23;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f40495a[BeautyMode.CHIN_RESHAPE_LEFT.ordinal()] = 24;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f40495a[BeautyMode.CHIN_RESHAPE_RIGHT.ordinal()] = 25;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f40495a[BeautyMode.CHIN_LENGTH.ordinal()] = 26;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f40495a[BeautyMode.FACE_WIDTH.ordinal()] = 27;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f40495a[BeautyMode.FACE_CHEEKBONE.ordinal()] = 28;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f40495a[BeautyMode.FACE_JAW.ordinal()] = 29;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f40495a[BeautyMode.NOSE_SIZE.ordinal()] = 30;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f40495a[BeautyMode.NOSE_LENGTH.ordinal()] = 31;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f40495a[BeautyMode.NOSE_BRIDGE.ordinal()] = 32;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f40495a[BeautyMode.NOSE_TIP.ordinal()] = 33;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f40495a[BeautyMode.NOSE_WING.ordinal()] = 34;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f40495a[BeautyMode.NOSE_WIDTH.ordinal()] = 35;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f40495a[BeautyMode.EYE_SIZE.ordinal()] = 36;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f40495a[BeautyMode.EYE_SIZE_LEFT.ordinal()] = 37;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f40495a[BeautyMode.EYE_SIZE_RIGHT.ordinal()] = 38;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f40495a[BeautyMode.EYE_WIDTH.ordinal()] = 39;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f40495a[BeautyMode.EYE_HEIGHT.ordinal()] = 40;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f40495a[BeautyMode.EYE_DISTANCE.ordinal()] = 41;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f40495a[BeautyMode.EYE_SLANT.ordinal()] = 42;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f40495a[BeautyMode.LIP_SIZE.ordinal()] = 43;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f40495a[BeautyMode.LIP_WIDTH.ordinal()] = 44;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f40495a[BeautyMode.LIP_HEIGHT.ordinal()] = 45;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f40495a[BeautyMode.LIP_HEIGHT_UPPER.ordinal()] = 46;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f40495a[BeautyMode.LIP_HEIGHT_LOWER.ordinal()] = 47;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f40495a[BeautyMode.LIP_PEAK.ordinal()] = 48;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f40495a[BeautyMode.NECKLACE.ordinal()] = 49;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f40495a[BeautyMode.CUBE_EYEWEAR.ordinal()] = 50;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f40495a[BeautyMode.SKIN_SMOOTHER.ordinal()] = 51;
            } catch (NoSuchFieldError unused63) {
            }
        }
    }

    public final class BackgroundConfiguration implements Configuration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public BackgroundPayload f40498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ ApplyEffectCtrl f40499b;

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final YMKPrimitiveData.Look a() {
            return null;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final void b() {
            ApplyEffectCtrl applyEffectCtrl = this.f40499b;
            LiveMakeupCtrlInterface liveMakeupCtrlInterface = applyEffectCtrl.f40485c;
            BackgroundPayload backgroundPayload = this.f40498a;
            liveMakeupCtrlInterface.h(backgroundPayload);
            LiveSettingCtrl liveSettingCtrl = applyEffectCtrl.f40489i;
            BeautyMode beautyMode = BeautyMode.BACKGROUND;
            ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
            if (backgroundPayload == null) {
                concurrentHashMap.remove(beautyMode);
            } else {
                concurrentHashMap.put(beautyMode, backgroundPayload);
            }
            if (backgroundPayload != null) {
                liveSettingCtrl.b(beautyMode);
            } else {
                liveSettingCtrl.a(beautyMode);
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final boolean isValid() {
            return this.f40498a != null;
        }
    }

    public final class BlushConfiguration extends FeatureConfiguration {
        public Pair n;
        public ArrayList o;
        public final byte[][][] p;
        public final Bitmap[][] q;
        public final int[][] r;
        public final int[][] s;
        public final int[][] t;
        public final int[][] u;
        public final int[][] v;
        public final int[][] w;
        public final Point[][] x;
        public boolean y;

        public BlushConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.BLUSH, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D);
            this.o = new ArrayList();
            int i2 = ApplyEffectCtrl.this.d;
            this.p = new byte[i2][][];
            this.q = new Bitmap[i2][];
            this.r = new int[i2][];
            this.s = new int[i2][];
            this.t = new int[i2][];
            this.u = new int[i2][];
            this.v = new int[i2][];
            this.w = new int[i2][];
            this.x = new Point[i2][];
            this.y = false;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void c() {
            this.f40528b.a(this.f40529c);
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER1;
            cLMakeupLiveFilter.E(makeupLiveFeatures, false);
            CLMakeupLiveFilter cLMakeupLiveFilter2 = applyEffectCtrl.f40486e;
            CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures2 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER2;
            cLMakeupLiveFilter2.E(makeupLiveFeatures2, false);
            CLMakeupLiveFilter cLMakeupLiveFilter3 = applyEffectCtrl.f40486e;
            CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures3 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER3;
            cLMakeupLiveFilter3.E(makeupLiveFeatures3, false);
            CLMakeupLiveFilter cLMakeupLiveFilter4 = applyEffectCtrl.f40486e;
            CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures4 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D;
            cLMakeupLiveFilter4.E(makeupLiveFeatures4, false);
            applyEffectCtrl.f40486e.F(makeupLiveFeatures, -1, false);
            applyEffectCtrl.f40486e.F(makeupLiveFeatures2, -1, false);
            applyEffectCtrl.f40486e.F(makeupLiveFeatures3, -1, false);
            applyEffectCtrl.f40486e.F(makeupLiveFeatures4, -1, false);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void h() {
            this.f40528b.b(this.f40529c);
            boolean z = this.y;
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            if (z) {
                int size = this.o.size();
                CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
                CLMakeupLiveFilter cLMakeupLiveFilter2 = applyEffectCtrl.f40486e;
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER1;
                cLMakeupLiveFilter.E(makeupLiveFeatures, size > 0);
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures2 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER2;
                cLMakeupLiveFilter2.E(makeupLiveFeatures2, 1 < size);
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures3 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER3;
                cLMakeupLiveFilter2.E(makeupLiveFeatures3, 2 < size);
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures4 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D;
                cLMakeupLiveFilter2.E(makeupLiveFeatures4, false);
                cLMakeupLiveFilter2.F(makeupLiveFeatures, -1, size > 0);
                cLMakeupLiveFilter2.F(makeupLiveFeatures2, -1, 1 < size);
                cLMakeupLiveFilter2.F(makeupLiveFeatures3, -1, 2 < size);
                cLMakeupLiveFilter2.F(makeupLiveFeatures4, -1, false);
            } else {
                CLMakeupLiveFilter cLMakeupLiveFilter3 = applyEffectCtrl.f40486e;
                CLMakeupLiveFilter cLMakeupLiveFilter4 = applyEffectCtrl.f40486e;
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures5 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER1;
                cLMakeupLiveFilter3.E(makeupLiveFeatures5, false);
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures6 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER2;
                cLMakeupLiveFilter4.E(makeupLiveFeatures6, false);
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures7 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER3;
                cLMakeupLiveFilter4.E(makeupLiveFeatures7, false);
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures8 = CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D;
                cLMakeupLiveFilter4.E(makeupLiveFeatures8, true);
                cLMakeupLiveFilter4.F(makeupLiveFeatures5, -1, false);
                cLMakeupLiveFilter4.F(makeupLiveFeatures6, -1, false);
                cLMakeupLiveFilter4.F(makeupLiveFeatures7, -1, false);
                cLMakeupLiveFilter4.F(makeupLiveFeatures8, -1, true);
            }
            for (Integer num : this.g) {
                if (this.y) {
                    int size2 = this.o.size();
                    CLMakeupLiveFilter cLMakeupLiveFilter5 = applyEffectCtrl.f40486e;
                    CLMakeupLiveFilter cLMakeupLiveFilter6 = applyEffectCtrl.f40486e;
                    cLMakeupLiveFilter5.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER1, num.intValue(), size2 > 0);
                    cLMakeupLiveFilter6.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER2, num.intValue(), 1 < size2);
                    cLMakeupLiveFilter6.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER3, num.intValue(), 2 < size2);
                    cLMakeupLiveFilter6.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D, num.intValue(), false);
                } else {
                    CLMakeupLiveFilter cLMakeupLiveFilter7 = applyEffectCtrl.f40486e;
                    CLMakeupLiveFilter cLMakeupLiveFilter8 = applyEffectCtrl.f40486e;
                    cLMakeupLiveFilter7.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER1, num.intValue(), false);
                    cLMakeupLiveFilter8.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER2, num.intValue(), false);
                    cLMakeupLiveFilter8.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER3, num.intValue(), false);
                    cLMakeupLiveFilter8.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D, num.intValue(), true);
                }
            }
            for (Integer num2 : this.f40532h) {
                CLMakeupLiveFilter cLMakeupLiveFilter9 = applyEffectCtrl.f40486e;
                CLMakeupLiveFilter cLMakeupLiveFilter10 = applyEffectCtrl.f40486e;
                cLMakeupLiveFilter9.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER1, num2.intValue(), false);
                cLMakeupLiveFilter10.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER2, num2.intValue(), false);
                cLMakeupLiveFilter10.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3DV2_LAYER3, num2.intValue(), false);
                cLMakeupLiveFilter10.F(CLMakeupLiveFilter.MakeupLiveFeatures.BLUSH3D, num2.intValue(), false);
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            int i2;
            int[] iArr;
            int i3;
            int i4;
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            CLMakeupLiveFilter cLMakeupLiveFilter2 = applyEffectCtrl.f40486e;
            Objects.requireNonNull(cLMakeupLiveFilter);
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            this.m = performanceCounter.a();
            boolean z = this.y;
            int[][] iArr2 = this.v;
            int[][] iArr3 = this.u;
            int[][] iArr4 = this.s;
            int[][] iArr5 = this.r;
            int[][] iArr6 = this.t;
            int i5 = 3;
            int i6 = -1;
            boolean z2 = this.d;
            if (z) {
                int[] iArr7 = new int[3];
                int[][] iArr8 = this.w;
                Point[][] pointArr = this.x;
                Bitmap[][] bitmapArr = this.q;
                if (z2) {
                    int i7 = 0;
                    while (i7 < i5) {
                        int size = this.o.size();
                        CLMakeupLiveFilter cLMakeupLiveFilter3 = applyEffectCtrl.f40486e;
                        if (i7 >= size) {
                            i4 = i7;
                            cLMakeupLiveFilter3.R(null, 0, 0, i4, -1);
                        } else {
                            cLMakeupLiveFilter3.O(iArr6[0][i7], i7, i6);
                            cLMakeupLiveFilter2.N(i7, i6, iArr5[0][i7]);
                            cLMakeupLiveFilter2.q0(iArr4[0][i7], i7, i6);
                            cLMakeupLiveFilter2.p0(i7, i6, iArr3[0][i7]);
                            cLMakeupLiveFilter2.u0(iArr2[0][i7], i7, i6);
                            CLMakeupLiveFilter cLMakeupLiveFilter4 = applyEffectCtrl.f40486e;
                            Bitmap bitmap = bitmapArr[0][i7];
                            Point point = pointArr[0][i7];
                            i4 = i7;
                            cLMakeupLiveFilter4.R(bitmap, point.x, point.y, i4, -1);
                            iArr7[i4] = iArr8[0][i4];
                        }
                        i7 = i4 + 1;
                        i5 = 3;
                        i6 = -1;
                    }
                    cLMakeupLiveFilter2.I(iArr7[0], iArr7[1], iArr7[2], -1);
                } else {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Integer) it.next()).intValue();
                        int i8 = 0;
                        while (i8 < 3) {
                            int size2 = this.o.size();
                            CLMakeupLiveFilter cLMakeupLiveFilter5 = applyEffectCtrl.f40486e;
                            if (i8 >= size2) {
                                i3 = i8;
                                cLMakeupLiveFilter5.R(null, 0, 0, i3, iIntValue);
                                iArr = iArr7;
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                                iArr = iArr7;
                                cLMakeupLiveFilter5.O(iArr6[i2][i8], i8, i2);
                                cLMakeupLiveFilter2.N(i8, i2, iArr5[i2][i8]);
                                cLMakeupLiveFilter2.q0(iArr4[i2][i8], i8, i2);
                                cLMakeupLiveFilter2.p0(i8, i2, iArr3[i2][i8]);
                                cLMakeupLiveFilter2.u0(iArr2[i2][i8], i8, i2);
                                CLMakeupLiveFilter cLMakeupLiveFilter6 = applyEffectCtrl.f40486e;
                                Bitmap bitmap2 = bitmapArr[i2][i8];
                                Point point2 = pointArr[i2][i8];
                                i3 = i8;
                                cLMakeupLiveFilter6.R(bitmap2, point2.x, point2.y, i3, iIntValue);
                                iArr[i3] = iArr8[i2][i3];
                            }
                            i8 = i3 + 1;
                            iIntValue = i2;
                            iArr7 = iArr;
                        }
                        int[] iArr9 = iArr7;
                        cLMakeupLiveFilter2.I(iArr9[0], iArr9[1], iArr9[2], iIntValue);
                        iArr7 = iArr9;
                    }
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        cLMakeupLiveFilter2.J(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Integer) it2.next()).intValue());
                    }
                }
            } else {
                byte[][][] bArr = this.p;
                if (z2) {
                    cLMakeupLiveFilter2.B(-1, bArr[0][0]);
                    cLMakeupLiveFilter2.J(iArr5[0][0], -1);
                    cLMakeupLiveFilter2.o0(iArr4[0][0], -1);
                    cLMakeupLiveFilter2.M(iArr6[0][0], -1);
                    cLMakeupLiveFilter2.n0(iArr3[0][0], -1);
                    cLMakeupLiveFilter2.t0(iArr2[0][0], -1);
                    for (int i9 = 0; i9 < 3; i9++) {
                        applyEffectCtrl.f40486e.R(null, 0, 0, i9, -1);
                    }
                } else {
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        int iIntValue2 = ((Integer) it3.next()).intValue();
                        cLMakeupLiveFilter2.B(iIntValue2, bArr[iIntValue2][0]);
                        cLMakeupLiveFilter2.J(iArr5[iIntValue2][0], iIntValue2);
                        cLMakeupLiveFilter2.o0(iArr4[iIntValue2][0], iIntValue2);
                        cLMakeupLiveFilter2.M(iArr6[iIntValue2][0], iIntValue2);
                        cLMakeupLiveFilter2.n0(iArr3[iIntValue2][0], iIntValue2);
                        cLMakeupLiveFilter2.t0(iArr2[iIntValue2][0], iIntValue2);
                        int i10 = 0;
                        while (i10 < 3) {
                            int i11 = i10;
                            applyEffectCtrl.f40486e.R(null, 0, 0, i11, iIntValue2);
                            i10 = i11 + 1;
                        }
                    }
                    Iterator it4 = list2.iterator();
                    while (it4.hasNext()) {
                        cLMakeupLiveFilter2.J(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Integer) it4.next()).intValue());
                    }
                }
            }
            this.m.J0();
            this.l.J0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            char c2;
            final YMKPrimitiveData.MakeupColor makeupColor;
            String str;
            Runnable runnable;
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            String str2 = configurationBuilder.f(i2).f40571a;
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            BlushPayload blushPayload = (BlushPayload) configurationBuilder.f(i2).f40576h;
            if (str2.isEmpty() || str2.equals(EffectId.INVALID_ID)) {
                str2 = ((BlushPayload.Setting) blushPayload.f40586a.get(0)).f40588a;
            }
            int[] iArr = new int[immutableList.size()];
            int[] iArr2 = new int[immutableList.size()];
            int[] iArr3 = new int[immutableList.size()];
            int[] iArr4 = new int[immutableList.size()];
            int[] iArr5 = new int[immutableList.size()];
            int[] iArr6 = new int[immutableList.size()];
            Point[] pointArr = new Point[immutableList.size()];
            LiveSettingCtrl liveSettingCtrl = this.f40528b;
            ArrayList arrayList = new ArrayList();
            List listF = liveSettingCtrl.f(str2);
            if (listF != null) {
                for (int i3 = 0; i3 < listF.size(); i3++) {
                    if (((YMKPrimitiveData.Mask) listF.get(i3)).f40806f == YMKPrimitiveData.Mask.Position.NONE) {
                        arrayList.add(((YMKPrimitiveData.Mask) listF.get(i3)).f40803b);
                    }
                }
            }
            this.o = arrayList;
            String str3 = null;
            Bitmap[] bitmapArr = null;
            str3 = null;
            if (arrayList.isEmpty()) {
                if (immutableList.isEmpty()) {
                    c2 = 0;
                    makeupColor = null;
                } else {
                    c2 = 0;
                    makeupColor = (YMKPrimitiveData.MakeupColor) immutableList.get(0);
                }
                if (makeupColor == null) {
                    md.n("Blush's color is not valid!");
                    return;
                }
                iArr[c2] = makeupColor.d;
                iArr2[c2] = makeupColor.f40791e;
                YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColor.g;
                iArr3[c2] = extraData.n;
                iArr4[c2] = extraData.l;
                iArr5[c2] = extraData.f40799i;
                iArr6[c2] = BlushPayload.b(extraData.r).a();
                List listF2 = this.f40528b.f(str2);
                if (listF2 != null) {
                    str = null;
                    for (int i4 = 0; i4 < listF2.size(); i4++) {
                        if (((YMKPrimitiveData.Mask) listF2.get(i4)).f40806f == YMKPrimitiveData.Mask.Position.LEFT) {
                            str3 = ((YMKPrimitiveData.Mask) listF2.get(i4)).f40803b;
                        }
                        if (((YMKPrimitiveData.Mask) listF2.get(i4)).f40806f == YMKPrimitiveData.Mask.Position.RIGHT) {
                            str = ((YMKPrimitiveData.Mask) listF2.get(i4)).f40803b;
                        }
                    }
                } else {
                    str = null;
                }
                Objects.requireNonNull(str3, "blush left model image can't be found");
                Objects.requireNonNull(str, "blush right model image can't be found");
                this.n = Pair.create(str3, str);
                synchronized (ApplyEffectCtrl.this.C) {
                    try {
                        this.m = PerformanceCounter.f39180b.a();
                        Pair pair = this.n;
                        Pair pairA = ApplyEffectCtrl.a((String) pair.first, (String) pair.second);
                        this.m.J0();
                        for (byte[] bArr : (byte[][]) pairA.second) {
                            Objects.requireNonNull(bArr, "image == null");
                        }
                        byte[] bArr2 = new byte[1252800];
                        BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                        Object obj = pairA.first;
                        int i5 = ((Point) obj).x;
                        int i6 = ((Point) obj).y;
                        Object obj2 = pairA.second;
                        UIMakeupJNI.CUIMakeupLive_InitializeBlushTexture(baseVenus.f40398a, baseVenus, i5, i6, ((byte[][]) obj2)[0], ((byte[][]) obj2)[1], bArr2);
                        this.p[i2] = new byte[][]{bArr2};
                        this.r[i2] = iArr2;
                        this.s[i2] = iArr;
                        this.v[i2] = iArr3;
                        this.w[i2] = iArr4;
                        this.u[i2] = iArr5;
                        this.t[i2] = iArr6;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                runnable = new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.BlushConfiguration.2
                    @Override // java.lang.Runnable
                    public void run() {
                        BlushConfiguration.this.e(makeupColor);
                    }
                };
            } else {
                this.y = true;
                int size = immutableList.size();
                Bitmap[][] bitmapArr2 = this.q;
                ArrayList arrayList2 = this.o;
                if (!arrayList2.isEmpty()) {
                    bitmapArr = new Bitmap[arrayList2.size()];
                    int i7 = 0;
                    while (i7 < arrayList2.size()) {
                        int[] iArr7 = iArr2;
                        int[] iArr8 = iArr3;
                        Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), (String) arrayList2.get(i7), BitmapUtils.f40998b);
                        Objects.requireNonNull(bitmapA);
                        Bitmap.Config config = bitmapA.getConfig();
                        Bitmap.Config config2 = Bitmap.Config.ALPHA_8;
                        if (config == config2) {
                            bitmapArr[i7] = bitmapA;
                        } else {
                            byte[] bArrA = FaceContourModel.a(bitmapA);
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapA.getWidth(), bitmapA.getHeight(), config2);
                            bitmapA.recycle();
                            bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArrA));
                            bitmapArr[i7] = bitmapCreateBitmap;
                        }
                        i7++;
                        iArr3 = iArr8;
                        iArr2 = iArr7;
                    }
                }
                int[] iArr9 = iArr2;
                int[] iArr10 = iArr3;
                bitmapArr2[i2] = bitmapArr;
                int length = this.q[i2].length;
                List listF3 = this.f40528b.f(str2);
                Point[] pointArr2 = new Point[listF3.size()];
                for (int i8 = 0; i8 < listF3.size(); i8++) {
                    pointArr2[i8] = ((YMKPrimitiveData.Mask) listF3.get(i8)).w;
                }
                for (int i9 = 0; i9 < Math.min(size, length); i9++) {
                    iArr[i9] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i9)).d;
                    iArr9[i9] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i9)).f40791e;
                    iArr10[i9] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i9)).g.n;
                    iArr4[i9] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i9)).g.l;
                    iArr5[i9] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i9)).g.f40799i;
                    iArr6[i9] = BlushPayload.b(((YMKPrimitiveData.MakeupColor) immutableList.get(i9)).g.r).a();
                }
                this.r[i2] = iArr9;
                this.s[i2] = iArr;
                this.v[i2] = iArr10;
                this.w[i2] = iArr4;
                this.u[i2] = iArr5;
                this.t[i2] = iArr6;
                this.x[i2] = pointArr2;
                runnable = new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.BlushConfiguration.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BlushConfiguration.this.d(configurationBuilder, i2);
                    }
                };
            }
            f(runnable);
            this.l.J0();
        }
    }

    public final class BronzerConfiguration extends FeatureConfiguration {
        public int n;
        public int o;
        public Point p;
        public Bitmap q;

        public BronzerConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.BRONZER, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.BRONZER);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            int i2 = this.o;
            int i3 = this.n;
            Point point = this.p;
            int i4 = point.x;
            int i5 = point.y;
            Bitmap bitmapH1 = this.q;
            if (bitmapH1 == null) {
                cLMakeupLiveFilter.getClass();
                bitmapH1 = CLMakeupLiveFilter.h1();
            }
            synchronized (cLMakeupLiveFilter.X4) {
                try {
                    cLMakeupLiveFilter.Z4 = bitmapH1;
                    for (int i6 = 0; i6 < 3; i6++) {
                        CLMakeupLiveBronzerFilter.a[] aVarArr = cLMakeupLiveFilter.Y4;
                        if (aVarArr[i6] == null) {
                            aVarArr[i6] = new CLMakeupLiveBronzerFilter.a();
                        }
                        CLMakeupLiveBronzerFilter.a aVar = cLMakeupLiveFilter.Y4[i6];
                        int i7 = cLMakeupLiveFilter.a5;
                        int height = bitmapH1.getHeight();
                        int width = bitmapH1.getWidth();
                        byte[] bArr = aVar.f25582c;
                        for (int i8 = 0; i8 < 256; i8++) {
                            bArr[i8] = (byte) i8;
                        }
                        aVar.f25580a = i2 * 0.01f;
                        aVar.f25581b = i3;
                        aVar.d = i4;
                        aVar.f25583e = i5;
                        aVar.f25584f = i7;
                        aVar.g = height;
                        aVar.f25585h = width;
                    }
                    cLMakeupLiveFilter.b5 = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.l.J0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) configurationBuilder.f(i2).d.get(0);
            this.n = makeupColor.d;
            this.o = makeupColor.f40791e;
            YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) this.f40528b.f(configurationBuilder.f(i2).f40571a).get(0);
            this.p = mask.w;
            Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), mask.f40803b, BitmapUtils.f40997a);
            int height = bitmapA.getHeight() * bitmapA.getWidth();
            int[] iArr = new int[height];
            bitmapA.getPixels(iArr, 0, bitmapA.getWidth(), 0, 0, bitmapA.getWidth(), bitmapA.getHeight());
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmapA.getHeight() * bitmapA.getWidth());
            byteBufferAllocate.rewind();
            for (int i3 = 0; i3 < height; i3++) {
                byteBufferAllocate.put((byte) Color.green(iArr[i3]));
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapA.getWidth(), bitmapA.getHeight(), Bitmap.Config.ALPHA_8);
            this.q = bitmapCreateBitmap;
            bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferAllocate.rewind());
            f(new p(this, configurationBuilder, i2, 0));
            this.l.J0();
        }
    }

    public final class ConcealerConfiguration extends FeatureConfiguration {
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            f(new p(this, configurationBuilder, i2, 1));
            this.l.J0();
        }
    }

    public interface Configuration {
        YMKPrimitiveData.Look a();

        void b();

        boolean isValid();
    }

    public static class ConfigurationWrapper extends ListConfiguration {
        public ConfigurationWrapper(Collection<Configuration> collection) {
            super(collection);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final YMKPrimitiveData.Look a() {
            return null;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final boolean isValid() {
            Iterator<E> it = this.f40541a.iterator();
            while (it.hasNext()) {
                if (((Configuration) it.next()).isValid()) {
                    return true;
                }
            }
            return false;
        }
    }

    public final class CubeEyewearConfiguration extends FeatureConfiguration {
        public final ArrayList n;
        public volatile CubeEyewearPayload o;

        public CubeEyewearConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.CUBE_EYEWEAR, configurationBuilder, new CLMakeupLiveFilter.MakeupLiveFeatures[0]);
            this.n = new ArrayList();
            f(new i7(ApplyEffectCtrl.this, 0));
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void k() {
            ApplyEffectCtrl.this.g();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            float[] fArr;
            float[] fArr2;
            float[] fArr3;
            int i2;
            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData;
            float f2;
            Map map;
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            Map map2 = this.o.f40601a;
            ArrayList arrayList = this.n;
            CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo = this.o.f40602b;
            cLMakeupLiveFilter.getClass();
            if (arrayList != null && liveCubeEyewearInfo != null) {
                int length = cLMakeupLiveFilter.e0.length;
                boolean z = true;
                cLMakeupLiveFilter.l3 = (CLShare3DRelatedClasses.Live3DRenderData[][]) Array.newInstance((Class<?>) CLShare3DRelatedClasses.Live3DRenderData.class, length, 4);
                cLMakeupLiveFilter.m3 = null;
                cLMakeupLiveFilter.x3 = liveCubeEyewearInfo;
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = 0; i3 < size; i3++) {
                    CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(i3);
                    if (liveObject3DModel != null && liveObject3DModel.IsValid()) {
                        arrayList2.add(Integer.valueOf(i3));
                    }
                }
                int size2 = arrayList2.size();
                if (size2 != 0) {
                    synchronized (cLMakeupLiveFilter.k3) {
                        try {
                            float[] fArr4 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                            float[] fArr5 = {1.0f, 1.0f, 1.0f};
                            float[] fArr6 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                            float[] fArr7 = {1.0f, 1.0f, 1.0f};
                            String[] strArr = {"front_texture", "env_region_texture", "left_texture", "right_texture", "env_map_texture", "env_frame_texture"};
                            cLMakeupLiveFilter.u3 = false;
                            cLMakeupLiveFilter.v3 = false;
                            cLMakeupLiveFilter.w3 = false;
                            boolean z2 = true;
                            int i4 = 0;
                            boolean z3 = true;
                            while (i4 < 6) {
                                Bitmap bitmap = (Bitmap) map2.get(strArr[i4]);
                                if (bitmap != null) {
                                    int width = bitmap.getWidth();
                                    int height = bitmap.getHeight();
                                    map = map2;
                                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
                                    bitmap.copyPixelsToBuffer(byteBufferAllocate);
                                    cLMakeupLiveFilter.q3[i4] = byteBufferAllocate.array();
                                    cLMakeupLiveFilter.r3[i4] = width;
                                    cLMakeupLiveFilter.s3[i4] = height;
                                } else {
                                    map = map2;
                                    cLMakeupLiveFilter.q3[i4] = null;
                                    cLMakeupLiveFilter.r3[i4] = 0;
                                    cLMakeupLiveFilter.s3[i4] = 0;
                                    if (i4 < 4) {
                                        z3 = false;
                                    } else if (i4 == 4) {
                                        z = false;
                                    } else {
                                        z2 = false;
                                    }
                                }
                                i4++;
                                map2 = map;
                            }
                            Map map3 = map2;
                            cLMakeupLiveFilter.u3 = z3;
                            cLMakeupLiveFilter.v3 = z;
                            cLMakeupLiveFilter.w3 = z2;
                            for (int i5 = 0; i5 < length; i5++) {
                                int i6 = 0;
                                int i7 = 4;
                                while (i6 < i7) {
                                    CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = cLMakeupLiveFilter.l3[i5];
                                    float[] fArr8 = fArr6;
                                    CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = live3DRenderDataArr[i6];
                                    if (live3DRenderData2 == null) {
                                        fArr = fArr4;
                                        fArr3 = fArr5;
                                        fArr2 = fArr7;
                                        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData3 = new CLShare3DRelatedClasses.Live3DRenderData(null, null, null, fArr, fArr3, fArr8, 1.0f, fArr2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                                        fArr8 = fArr8;
                                        live3DRenderDataArr[i6] = live3DRenderData3;
                                    } else {
                                        float[] fArr9 = fArr7;
                                        live3DRenderData2.SetRenderParameters(fArr4, fArr5, fArr8, 1.0f, fArr9, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                                        fArr = fArr4;
                                        fArr2 = fArr9;
                                        fArr3 = fArr5;
                                    }
                                    cLMakeupLiveFilter.l3[i5][i6].SetDiffuseTextureID(cLMakeupLiveFilter.p3[i6]);
                                    CLShare3DRelatedClasses.Live3DRenderData[][] live3DRenderDataArr2 = cLMakeupLiveFilter.l3;
                                    if (i6 == 1) {
                                        i2 = 4;
                                        live3DRenderDataArr2[i5][i6].SetEnvironmentTextureID(cLMakeupLiveFilter.p3[4]);
                                        live3DRenderData = cLMakeupLiveFilter.l3[i5][i6];
                                        CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo2 = cLMakeupLiveFilter.x3;
                                        live3DRenderData.environment_mode = liveCubeEyewearInfo2.r;
                                        live3DRenderData.environment_intensity = liveCubeEyewearInfo2.u;
                                        live3DRenderData.environment_tile_x = liveCubeEyewearInfo2.s;
                                        f2 = liveCubeEyewearInfo2.t;
                                    } else {
                                        i2 = 4;
                                        live3DRenderDataArr2[i5][i6].SetEnvironmentTextureID(cLMakeupLiveFilter.p3[5]);
                                        live3DRenderData = cLMakeupLiveFilter.l3[i5][i6];
                                        CLMakeupLiveCubeEyewearFilter.LiveCubeEyewearInfo liveCubeEyewearInfo3 = cLMakeupLiveFilter.x3;
                                        live3DRenderData.environment_mode = liveCubeEyewearInfo3.v;
                                        live3DRenderData.environment_intensity = liveCubeEyewearInfo3.y;
                                        live3DRenderData.environment_tile_x = liveCubeEyewearInfo3.w;
                                        f2 = liveCubeEyewearInfo3.x;
                                    }
                                    live3DRenderData.environment_tile_y = f2;
                                    i6++;
                                    fArr6 = fArr8;
                                    fArr4 = fArr;
                                    fArr5 = fArr3;
                                    fArr7 = fArr2;
                                    i7 = i2;
                                }
                            }
                            if (size2 > 0) {
                                cLMakeupLiveFilter.m3 = new CLShare3DRelatedClasses.Live3DRenderData[size2];
                            }
                            int i8 = 0;
                            while (i8 < size2) {
                                CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel2 = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(((Integer) arrayList2.get(i8)).intValue());
                                cLMakeupLiveFilter.m3[i8] = new CLShare3DRelatedClasses.Live3DRenderData(liveObject3DModel2.vertex_array, liveObject3DModel2.normal_array, liveObject3DModel2.texcoord_array, liveObject3DModel2.ambient_data.color, liveObject3DModel2.diffuse_data.color, liveObject3DModel2.specular_data.color, liveObject3DModel2.dissolve, liveObject3DModel2.transmission_filter, liveObject3DModel2.environment_mode, liveObject3DModel2.environment_intensity, liveObject3DModel2.environment_tile_x, liveObject3DModel2.environment_tile_y);
                                i8++;
                                arrayList = arrayList;
                            }
                            cLMakeupLiveFilter.t3 = true;
                            map3.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) throws Exception {
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) this.f40528b.f(configurationBuilder.f(i2).f40571a).get(0);
            Object obj = configurationBuilder.f(i2).f40576h;
            Objects.requireNonNull(obj);
            this.o = (CubeEyewearPayload) obj;
            String str = mask.H;
            if (TextUtils.isEmpty(str) || !new File(str).exists()) {
                boolean zExists = new File(ApplyEffectCtrl.this.f40491k).exists();
                ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
                if (!zExists) {
                    md.n(d21.p(new StringBuilder("default eyewear occluder file doesn't exist defaultEyewearOccluderFilePath="), applyEffectCtrl.f40491k, ", customOccluderPath=", str));
                    return;
                }
                str = applyEffectCtrl.f40491k;
            }
            q(str, this.n);
            this.l.close();
        }

        public final void q(String str, ArrayList arrayList) throws Exception {
            boolean zCUIMakeupLive_LoadObject3DModel;
            List list = ApplyEffectCtrl.G;
            PerformanceCounter.Tracer tracerA = PerformanceCounter.f39180b.a();
            synchronized (ApplyEffectCtrl.this.E) {
                ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
                readLock.lock();
                try {
                    BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                    zCUIMakeupLive_LoadObject3DModel = UIMakeupJNI.CUIMakeupLive_LoadObject3DModel(baseVenus.f40398a, baseVenus, str, arrayList, true, new MutableInteger());
                    readLock.unlock();
                } catch (Throwable th) {
                    ApplyEffectCtrl.K.unlock();
                    throw th;
                }
            }
            if (zCUIMakeupLive_LoadObject3DModel) {
                tracerA.close();
            } else {
                md.k("Load occluder file failed.");
            }
        }
    }

    public final class EarringsConfiguration extends FeatureConfiguration {
        public final ArrayList A;
        public final ArrayList n;
        public final ArrayList o;
        public final ArrayList p;
        public final ArrayList q;
        public final ArrayList r;
        public final ArrayList s;
        public final ArrayList t;
        public final ArrayList u;
        public final ArrayList v;
        public final ArrayList w;
        public final ArrayList x;
        public final ArrayList y;
        public final ArrayList z;

        public EarringsConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.EARRINGS, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.EARRING);
            this.n = new ArrayList();
            this.o = new ArrayList();
            this.p = new ArrayList();
            this.q = new ArrayList();
            this.r = new ArrayList();
            this.s = new ArrayList();
            this.t = new ArrayList();
            this.u = new ArrayList();
            this.v = new ArrayList();
            this.w = new ArrayList();
            this.x = new ArrayList();
            this.y = new ArrayList();
            this.z = new ArrayList();
            this.A = new ArrayList();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            ApplyEffectCtrl.this.f40485c.a(this.n, this.o, this.p, this.q, this.t, this.r, this.s, this.u, this.v, this.w, this.x, this.y, this.z, new q(this, 0));
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) throws Exception {
            Object obj;
            boolean zCUIMakeupLive_LoadEarringModel;
            MutableFloat mutableFloat;
            MutableFloat mutableFloat2;
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            Object obj2 = configurationBuilder.f(i2).f40576h;
            Objects.requireNonNull(obj2);
            EarringsPayload earringsPayload = (EarringsPayload) obj2;
            earringsPayload.a();
            ArrayList arrayList = new ArrayList();
            Iterator<E> it = earringsPayload.f40605b.iterator();
            while (it.hasNext()) {
                List<YMKPrimitiveData.Mask> listF = this.f40528b.f(((EarringsPayload.Pattern) it.next()).f40609c);
                Set set = MoreCollections.f39434a;
                if (listF == null) {
                    listF = Collections.EMPTY_LIST;
                }
                for (YMKPrimitiveData.Mask mask : listF) {
                    if (!TextUtils.isEmpty(mask.F)) {
                        arrayList.add(mask.F);
                    }
                }
            }
            Iterator<E> it2 = earringsPayload.f40606c.iterator();
            while (it2.hasNext()) {
                List<YMKPrimitiveData.Mask> listF2 = this.f40528b.f(((EarringsPayload.Pattern) it2.next()).f40609c);
                Set set2 = MoreCollections.f39434a;
                if (listF2 == null) {
                    listF2 = Collections.EMPTY_LIST;
                }
                for (YMKPrimitiveData.Mask mask2 : listF2) {
                    if (!TextUtils.isEmpty(mask2.G)) {
                        arrayList.add(mask2.G);
                    }
                }
            }
            for (Iterator it3 = arrayList.iterator(); it3.hasNext(); it3 = it3) {
                String str = (String) it3.next();
                File file = new File(str);
                if (file.exists()) {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    n nVar = new n();
                    n nVar2 = new n();
                    MutableInteger mutableInteger = new MutableInteger();
                    MutableInteger mutableInteger2 = new MutableInteger();
                    MutableInteger mutableInteger3 = new MutableInteger();
                    MutableFloat mutableFloat3 = new MutableFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    MutableFloat mutableFloat4 = new MutableFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    MutableFloat mutableFloat5 = new MutableFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    ArrayList arrayList6 = new ArrayList();
                    float[] fArr = new float[16];
                    Object obj3 = ApplyEffectCtrl.this.F;
                    synchronized (obj3) {
                        try {
                            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
                            readLock.lock();
                            try {
                                if (str.endsWith(".glpf")) {
                                    String strConcat = str.substring(0, str.length() - 5).concat(".json");
                                    File file2 = new File(strConcat);
                                    BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                                    if (!file2.exists()) {
                                        strConcat = null;
                                    }
                                    try {
                                        long j2 = baseVenus.f40398a;
                                        obj = obj3;
                                        try {
                                            zCUIMakeupLive_LoadEarringModel = UIMakeupJNI.CUIMakeupLive_LoadEarringModel(j2, baseVenus, str, strConcat, arrayList2, arrayList3, nVar, nVar2, mutableInteger, mutableInteger2, mutableInteger3, mutableFloat3, arrayList4, arrayList5, mutableFloat4, mutableFloat5, arrayList6, fArr);
                                            mutableFloat = mutableFloat4;
                                            mutableFloat2 = mutableFloat5;
                                        } catch (Throwable th) {
                                            th = th;
                                            ApplyEffectCtrl.K.unlock();
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } else {
                                    obj = obj3;
                                    BaseVenus baseVenus2 = ApplyEffectCtrl.this.f40488h;
                                    zCUIMakeupLive_LoadEarringModel = UIMakeupJNI.CUIMakeupLive_LoadEarringModel(baseVenus2.f40398a, baseVenus2, str, null, arrayList2, arrayList3, nVar, nVar2, mutableInteger, mutableInteger2, mutableInteger3, mutableFloat3, arrayList4, arrayList5, mutableFloat4, mutableFloat5, arrayList6, fArr);
                                    mutableFloat = mutableFloat4;
                                    mutableFloat2 = mutableFloat5;
                                }
                                try {
                                    readLock.unlock();
                                    if (!zCUIMakeupLive_LoadEarringModel) {
                                        md.k("Load earrings model failed.");
                                        return;
                                    }
                                    this.n.add(nVar);
                                    this.o.add(nVar2);
                                    this.p.add(Integer.valueOf(mutableInteger.value));
                                    this.q.add(Integer.valueOf(mutableInteger2.value));
                                    this.t.add(Integer.valueOf(mutableInteger3.value));
                                    this.r.add(Float.valueOf(mutableFloat3.value));
                                    this.s.add(arrayList3);
                                    this.u.add(arrayList4);
                                    this.v.add(arrayList5);
                                    this.w.add(Float.valueOf(mutableFloat.value));
                                    this.x.add(Float.valueOf(mutableFloat2.value));
                                    this.y.add(arrayList6);
                                    ArrayList arrayList7 = new ArrayList();
                                    for (int i3 = 0; i3 < 16; i3++) {
                                        arrayList7.add(Float.valueOf(fArr[i3]));
                                    }
                                    this.z.add(arrayList7);
                                    HashMap map = new HashMap();
                                    PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
                                    this.m = performanceCounter.a();
                                    Object3dLoader.c(file.getParent(), arrayList2, map);
                                    this.m.close();
                                    HashMap map2 = new HashMap();
                                    this.m = performanceCounter.a();
                                    Object3dLoader.a(ApplyEffectCtrl.this.f40488h, file.getParent(), arrayList2, map2);
                                    this.m.close();
                                    CLMakeupLiveFilter.b bVar = new CLMakeupLiveFilter.b();
                                    bVar.f25663a = arrayList2;
                                    bVar.f25664b = map;
                                    bVar.f25665c = map2;
                                    this.A.add(bVar);
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            obj = obj3;
                        }
                    }
                }
            }
            this.l.close();
        }
    }

    public final class EyeContactConfiguration extends FeatureConfiguration {
        public final int[][] n;
        public final int[] o;
        public int p;
        public int q;
        public byte[][] r;
        public byte[][][] s;
        public int[][] t;
        public int[] u;

        public EyeContactConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.EYE_CONTACT, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.EYECONTACTS);
            int i2 = ApplyEffectCtrl.this.d;
            this.n = new int[i2][];
            this.o = new int[i2];
            this.r = new byte[i2][];
            this.s = new byte[i2][][];
            this.t = new int[i2][];
            this.u = new int[i2];
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            Objects.requireNonNull(applyEffectCtrl.f40486e);
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            this.m = performanceCounter.a();
            boolean z = this.d;
            int[] iArr = this.o;
            int[][] iArr2 = this.n;
            if (z) {
                applyEffectCtrl.f40486e.a0(iArr2[0], this.p, this.q, iArr[0], -1);
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    applyEffectCtrl.f40486e.a0(iArr2[iIntValue], this.p, this.q, iArr[iIntValue], iIntValue);
                }
            }
            this.m.J0();
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void n() {
            this.r = null;
            this.s = null;
            this.t = null;
            this.u = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            byte[][] bArr;
            int[] iArr;
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            String str = configurationBuilder.f(i2).f40571a;
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            this.m = performanceCounter.a();
            LiveSettingCtrl liveSettingCtrl = this.f40528b;
            List listF = liveSettingCtrl.f(str);
            byte[] bArrI = new byte[0];
            if (!listF.isEmpty()) {
                bArrI = LiveMakeupCtrl.i(BitmapUtils.a(PfCommons.b(), ((YMKPrimitiveData.Mask) listF.get(0)).d, BitmapUtils.f40997a));
            }
            int iMin = Math.min(immutableList.size(), liveSettingCtrl.f(str).size());
            if (iMin > 0) {
                List listF2 = liveSettingCtrl.f(str);
                bArr = new byte[listF2.size()][];
                for (int i3 = 0; i3 < listF2.size(); i3++) {
                    Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), ((YMKPrimitiveData.Mask) listF2.get(i3)).f40803b, EyeModel.f40611c);
                    Bitmap bitmapExtractAlpha = bitmapA.extractAlpha();
                    ImageUtils.b(bitmapA);
                    bArr[i3] = EyeModel.b(bitmapExtractAlpha);
                }
                int size = liveSettingCtrl.f(str).size();
                iArr = new int[size];
                int i4 = 0;
                while (i4 < size) {
                    iArr[i4] = immutableList.size() > i4 ? ((YMKPrimitiveData.MakeupColor) immutableList.get(i4)).d : 0;
                    i4++;
                }
            } else {
                bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 0, 0);
                iArr = new int[0];
            }
            this.m.J0();
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.EyeContactConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    EyeContactConfiguration.this.d(configurationBuilder, i2);
                    EyeContactConfiguration.this.f40528b.o = configurationBuilder.f(i2).g;
                }
            });
            ApplyEffectCtrl.this.f40485c.d();
            this.p = liveSettingCtrl.f40742a.value;
            this.q = liveSettingCtrl.f40743b.value;
            this.n[i2] = new int[liveSettingCtrl.f40744c.value];
            this.r[i2] = bArrI;
            this.s[i2] = bArr;
            this.t[i2] = iArr;
            this.u[i2] = iMin;
            this.o[i2] = !MoreCollections.a(immutableList) ? ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).f40791e : LiveSettingCtrl.c(this.f40529c);
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void p(int i2) {
            List list = ApplyEffectCtrl.G;
            this.m = PerformanceCounter.f39180b.a();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                ApplyEffectCtrl.this.f40488h.n(this.n[i2], this.r[i2], this.s[i2], this.t[i2], this.u[i2], this.o[i2], this.p, this.q);
                readLock.unlock();
                this.m.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.K.unlock();
                throw th;
            }
        }
    }

    public final class EyeLashesConfiguration extends FeatureConfiguration {
        public final byte[][] n;
        public final int[] o;
        public byte[][][] p;
        public int[] q;
        public int[] r;

        public EyeLashesConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.EYE_LASHES, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.EYELASH);
            int i2 = ApplyEffectCtrl.this.d;
            this.n = new byte[i2][];
            this.o = new int[i2];
            this.p = new byte[i2][][];
            this.q = new int[i2];
            this.r = new int[i2];
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            InvalidEyeBuffer invalidEyeBuffer = applyEffectCtrl.B;
            CLMakeupLiveFilter cLMakeupLiveFilter2 = applyEffectCtrl.f40486e;
            Objects.requireNonNull(cLMakeupLiveFilter);
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            this.m = performanceCounter.a();
            int[] iArr = this.o;
            byte[][] bArr = this.n;
            boolean z = this.d;
            if (z) {
                cLMakeupLiveFilter2.Y(true, iArr[0], -1, bArr[0]);
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    cLMakeupLiveFilter2.Y(true, iArr[iIntValue], iIntValue, bArr[iIntValue]);
                }
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    cLMakeupLiveFilter2.Y(true, 0, ((Integer) it2.next()).intValue(), invalidEyeBuffer.f40540b);
                }
            }
            this.m.J0();
            this.m = PerformanceCounter.f39180b.a();
            if (z) {
                cLMakeupLiveFilter2.Y(false, iArr[0], -1, bArr[0]);
            } else {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    int iIntValue2 = ((Integer) it3.next()).intValue();
                    cLMakeupLiveFilter2.Y(false, iArr[iIntValue2], iIntValue2, bArr[iIntValue2]);
                }
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    cLMakeupLiveFilter2.Y(false, 0, ((Integer) it4.next()).intValue(), invalidEyeBuffer.f40540b);
                }
            }
            this.m.J0();
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void n() {
            this.p = null;
            this.q = null;
            this.r = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            int i3;
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            String str = configurationBuilder.f(i2).f40571a;
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            this.m = performanceCounter.a();
            EyeModel eyeModel = new EyeModel(this.f40528b, str, BeautyMode.EYE_LASHES);
            this.m.J0();
            byte[][] bArr = eyeModel.f40612a;
            int length = bArr.length;
            byte[] bArr2 = new byte[135000];
            int i4 = 0;
            final YMKPrimitiveData.MakeupColor makeupColor = !immutableList.isEmpty() ? (YMKPrimitiveData.MakeupColor) immutableList.get(0) : null;
            if (makeupColor != null) {
                i3 = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).d;
                i4 = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).f40791e;
            } else {
                i3 = 0;
            }
            this.n[i2] = bArr2;
            this.p[i2] = bArr;
            this.q[i2] = i4;
            this.r[i2] = length;
            this.o[i2] = i3;
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.EyeLashesConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    EyeLashesConfiguration.this.e(makeupColor);
                }
            });
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void p(int i2) {
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            applyEffectCtrl.f40485c.d();
            this.m = performanceCounter.a();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                BaseVenus baseVenus = applyEffectCtrl.f40488h;
                if (!UIMakeupJNI.CUIMakeupLive_PreprocessEyelashModel(baseVenus.f40398a, baseVenus, this.n[i2], this.p[i2], this.q[i2], this.r[i2], 450, 300)) {
                    throw new IllegalArgumentException("PreprocessEyelashModel failed.");
                }
                readLock.unlock();
                this.m.J0();
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.K.unlock();
                throw th;
            }
        }
    }

    public final class EyeLinerConfiguration extends FeatureConfiguration {
        public int[] A;
        public Bitmap n;
        public final CLShare3DRelatedClasses.Live3DHDRTextureData o;
        public final byte[][] p;
        public final byte[][] q;
        public final int[][] r;
        public final byte[][] s;
        public int[][] t;
        public int[][] u;
        public int[][] v;
        public final int[][] w;
        public final int[][] x;
        public byte[][][] y;
        public int[][] z;

        public EyeLinerConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.EYE_LINES, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.EYELINER);
            this.o = new CLShare3DRelatedClasses.Live3DHDRTextureData();
            int i2 = ApplyEffectCtrl.this.d;
            this.p = new byte[i2][];
            this.q = new byte[i2][];
            this.r = new int[i2][];
            this.s = new byte[i2][];
            this.t = new int[i2][];
            this.u = new int[i2][];
            this.v = new int[i2][];
            this.w = new int[i2][];
            this.x = new int[i2][];
            this.y = new byte[i2][][];
            this.z = new int[i2][];
            this.A = new int[i2];
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            int[][] iArr = this.w;
            byte[][] bArr = this.s;
            int[][] iArr2 = this.r;
            byte[][] bArr2 = this.q;
            byte[][] bArr3 = this.p;
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            Objects.requireNonNull(applyEffectCtrl.f40486e);
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            this.m = performanceCounter.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            Bitmap bitmap = this.n;
            CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = this.o;
            synchronized (cLMakeupLiveFilter.R2) {
                cLMakeupLiveFilter.S2 = bitmap;
                cLMakeupLiveFilter.T2 = live3DHDRTextureData;
                cLMakeupLiveFilter.U2 = true;
            }
            boolean z = this.d;
            if (z) {
                applyEffectCtrl.f40486e.C(true, iArr[0], bArr3[0], bArr2[0], iArr2[0], bArr[0], -1);
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    applyEffectCtrl.f40486e.C(true, iArr[iIntValue], bArr3[iIntValue], bArr2[iIntValue], iArr2[iIntValue], bArr[iIntValue], iIntValue);
                }
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    int iIntValue2 = ((Integer) it2.next()).intValue();
                    applyEffectCtrl.f40486e.C(true, applyEffectCtrl.B.f40539a, bArr3[iIntValue2], bArr2[iIntValue2], iArr2[iIntValue2], bArr[iIntValue2], iIntValue2);
                }
            }
            this.m.J0();
            this.m = PerformanceCounter.f39180b.a();
            if (z) {
                applyEffectCtrl.f40486e.C(false, iArr[0], bArr3[0], bArr2[0], iArr2[0], bArr[0], -1);
            } else {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    int iIntValue3 = ((Integer) it3.next()).intValue();
                    applyEffectCtrl.f40486e.C(false, iArr[iIntValue3], bArr3[iIntValue3], bArr2[iIntValue3], iArr2[iIntValue3], bArr[iIntValue3], iIntValue3);
                }
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    int iIntValue4 = ((Integer) it4.next()).intValue();
                    applyEffectCtrl.f40486e.C(false, applyEffectCtrl.B.f40539a, bArr3[iIntValue4], bArr2[iIntValue4], iArr2[iIntValue4], bArr[iIntValue4], iIntValue4);
                }
            }
            this.m.J0();
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void n() {
            this.y = null;
            this.z = null;
            this.A = null;
            this.t = null;
            this.u = null;
            this.v = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = false;
            this.n = BitmapFactory.decodeFile(ApplyEffectCtrl.this.o, options);
            configurationBuilder.f(i2);
            Object obj = configurationBuilder.f(i2).f40576h;
            Objects.requireNonNull(obj, "eye shadow payload can't be null");
            EyeShadowLinerPayload eyeShadowLinerPayload = (EyeShadowLinerPayload) obj;
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            int size = immutableList.size();
            this.m = performanceCounter.a();
            EyeShadowLinerModel eyeShadowLinerModelB = ApplyEffectCtrl.b(this.f40528b, eyeShadowLinerPayload);
            this.m.J0();
            byte[][] bArr = eyeShadowLinerModelB.f40524a;
            int length = bArr.length;
            if (size < length) {
                Log.g(5, "ApplyEffectCtrl", o60.h(size, length, "[Eye Shadow left] Color count is less than pattern count. color=", ", pattern="));
            }
            int[] iArr = new int[length];
            int[] iArr2 = new int[length];
            if (length == 2 && eyeShadowLinerPayload.f40613a.size() == 1) {
                for (int i3 = 0; i3 < length; i3++) {
                    iArr[i3] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).d;
                    iArr2[i3] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).f40791e;
                }
            } else {
                for (int i4 = 0; i4 < length; i4++) {
                    if (size == 1) {
                        iArr[i4] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).d;
                        iArr2[i4] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).f40791e;
                    } else {
                        iArr[i4] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i4)).d;
                        iArr2[i4] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i4)).f40791e;
                    }
                }
            }
            int[] iArr3 = new int[length];
            int[] iArr4 = new int[length];
            int[] iArr5 = new int[length];
            for (int i5 = 0; i5 < length; i5++) {
                if (size == 1) {
                    iArr3[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).l();
                    iArr4[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).g.n;
                    iArr5[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).i();
                } else {
                    iArr3[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i5)).l();
                    iArr4[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i5)).g.n;
                    iArr5[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i5)).i();
                }
            }
            if (!immutableList.isEmpty()) {
                immutableList.get(0);
            }
            this.w[i2] = new int[135000];
            this.y[i2] = bArr;
            this.x[i2] = iArr;
            this.z[i2] = iArr2;
            this.A[i2] = length;
            this.u[i2] = iArr3;
            this.t[i2] = iArr5;
            this.v[i2] = iArr4;
            this.p[i2] = new byte[135000];
            this.q[i2] = new byte[135000];
            this.s[i2] = new byte[135000];
            this.r[i2] = new int[135000];
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.EyeLinerConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    EyeLinerConfiguration.this.d(configurationBuilder, i2);
                }
            });
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void p(int i2) {
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            LiveMakeupCtrlInterface liveMakeupCtrlInterface = applyEffectCtrl.f40485c;
            BaseVenus baseVenus = applyEffectCtrl.f40488h;
            liveMakeupCtrlInterface.d();
            this.m = performanceCounter.a();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                if (!UIMakeupJNI.CUIMakeupLive_LoadObject3DHDR(baseVenus.f40398a, baseVenus, applyEffectCtrl.n, this.o)) {
                    Log.d("ApplyEffectCtrl", "EyeLiner load hdr file error.");
                }
                if (!UIMakeupJNI.CUIMakeupLive_PreprocessEyelinerModel(baseVenus.f40398a, baseVenus, this.w[i2], this.y[i2], this.x[i2], this.z[i2], this.A[i2], 450, 300, this.u[i2], this.p[i2], this.q[i2], this.v[i2], this.r[i2], this.t[i2], this.s[i2])) {
                    throw new IllegalArgumentException("PreprocessEyelinerModel failed.");
                }
                readLock.unlock();
                this.m.J0();
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.K.unlock();
                throw th;
            }
        }
    }

    public final class EyeShadowConfiguration extends FeatureConfiguration {
        public final byte[][] A;
        public int[][] B;
        public final byte[][] C;
        public byte[][][] D;
        public int[][] E;
        public int[][] F;
        public int[] G;
        public int[][] H;
        public byte[][][] I;
        public int[][] J;
        public int[][] K;
        public int[] L;
        public int[][] M;
        public Bitmap n;
        public final CLShare3DRelatedClasses.Live3DHDRTextureData o;
        public final int p;
        public final int q;
        public final int r;
        public boolean s;
        public final int[][] t;
        public final byte[][] u;
        public final byte[][] v;
        public final int[][] w;
        public final byte[][] x;
        public final byte[][] y;
        public int[][] z;

        public EyeShadowConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.EYE_SHADOW, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.EYESHADOW);
            this.o = new CLShare3DRelatedClasses.Live3DHDRTextureData();
            int i2 = ApplyEffectCtrl.this.d;
            this.t = new int[i2][];
            this.u = new byte[i2][];
            this.v = new byte[i2][];
            this.w = new int[i2][];
            this.x = new byte[i2][];
            this.y = new byte[i2][];
            this.z = new int[i2][];
            this.A = new byte[i2][];
            this.B = new int[i2][];
            this.C = new byte[i2][];
            this.D = new byte[i2][][];
            this.E = new int[i2][];
            this.F = new int[i2][];
            this.G = new int[i2];
            this.H = new int[i2][];
            this.I = new byte[i2][][];
            this.J = new int[i2][];
            this.K = new int[i2][];
            this.L = new int[i2];
            this.M = new int[i2][];
            LiveMakeupCtrlInterface liveMakeupCtrlInterface = ApplyEffectCtrl.this.f40485c;
            int iB = liveMakeupCtrlInterface.b();
            int iC = liveMakeupCtrlInterface.c();
            int iMin = ((iB <= 0 || iC <= 0) ? Sink.Video.MAX_DIMENSION_HIGH : Math.min(iB, iC)) / 2;
            this.p = iMin;
            this.q = (iMin << 1) / 3;
            int i3 = 0;
            for (int i4 = 0; i4 < 2; i4++) {
                i3 += (this.p >> i4) * (this.q >> i4);
            }
            this.r = i3;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            byte[][] bArr = this.C;
            byte[][] bArr2 = this.y;
            byte[][] bArr3 = this.x;
            int[][] iArr = this.w;
            boolean z = this.d;
            byte[][] bArr4 = this.A;
            int[][] iArr2 = this.t;
            byte[][] bArr5 = this.v;
            byte[][] bArr6 = this.u;
            List list3 = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            this.m = performanceCounter.a();
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            Bitmap bitmap = this.n;
            CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = this.o;
            synchronized (cLMakeupLiveFilter.R2) {
                cLMakeupLiveFilter.S2 = bitmap;
                cLMakeupLiveFilter.T2 = live3DHDRTextureData;
                cLMakeupLiveFilter.U2 = true;
            }
            CLMakeupLiveFilter cLMakeupLiveFilter2 = applyEffectCtrl.f40486e;
            int i2 = applyEffectCtrl.f40488h.d ? 105 : 0;
            int i3 = 0;
            while (i3 < 3) {
                CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter = cLMakeupLiveFilter2.E[i3];
                byte[][] bArr7 = bArr;
                float f2 = i2 / 100.0f;
                cLMakeupLiveEyeFilter.G5 = f2;
                byte[][] bArr8 = bArr2;
                byte[][] bArr9 = bArr3;
                int[][] iArr3 = iArr;
                if (f2 > 1.0f) {
                    cLMakeupLiveEyeFilter.G5 = tr.a(f2, 1.0f, 25.0f, 1.0f);
                }
                CLMakeupLiveEyeFilter cLMakeupLiveEyeFilter2 = cLMakeupLiveFilter2.F[i3];
                cLMakeupLiveEyeFilter2.G5 = f2;
                if (f2 > 1.0f) {
                    cLMakeupLiveEyeFilter2.G5 = tr.a(f2, 1.0f, 25.0f, 1.0f);
                }
                i3++;
                bArr = bArr7;
                bArr2 = bArr8;
                bArr3 = bArr9;
                iArr = iArr3;
            }
            byte[][] bArr10 = bArr;
            byte[][] bArr11 = bArr2;
            byte[][] bArr12 = bArr3;
            int[][] iArr4 = iArr;
            cLMakeupLiveFilter2.getClass();
            if (z) {
                applyEffectCtrl.f40486e.D(true, iArr2[0], bArr6[0], bArr5[0], this.p, this.q, bArr4[0], -1);
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    applyEffectCtrl.f40486e.D(true, iArr2[iIntValue], bArr6[iIntValue], bArr5[iIntValue], this.p, this.q, bArr4[iIntValue], iIntValue);
                }
            }
            this.m.J0();
            this.m = PerformanceCounter.f39180b.a();
            if (this.s) {
                if (z) {
                    applyEffectCtrl.f40486e.D(false, iArr4[0], bArr12[0], bArr11[0], this.p, this.q, bArr10[0], -1);
                } else {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        int iIntValue2 = ((Integer) it2.next()).intValue();
                        applyEffectCtrl.f40486e.D(false, iArr4[iIntValue2], bArr12[iIntValue2], bArr11[iIntValue2], this.p, this.q, bArr10[iIntValue2], iIntValue2);
                    }
                }
            } else if (z) {
                applyEffectCtrl.f40486e.D(false, iArr2[0], bArr6[0], bArr5[0], this.p, this.q, bArr4[0], -1);
            } else {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    int iIntValue3 = ((Integer) it3.next()).intValue();
                    applyEffectCtrl.f40486e.D(false, iArr2[iIntValue3], bArr6[iIntValue3], bArr5[iIntValue3], this.p, this.q, bArr4[iIntValue3], iIntValue3);
                }
            }
            this.m.J0();
            if (!z && !list2.isEmpty()) {
                byte[] bArr13 = new byte[bArr6[((Integer) list.get(0)).intValue()].length];
                byte[] bArr14 = new byte[bArr5[((Integer) list.get(0)).intValue()].length];
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    int iIntValue4 = ((Integer) it4.next()).intValue();
                    CLMakeupLiveFilter cLMakeupLiveFilter3 = applyEffectCtrl.f40486e;
                    InvalidEyeBuffer invalidEyeBuffer = applyEffectCtrl.B;
                    byte[] bArr15 = bArr14;
                    cLMakeupLiveFilter3.D(true, invalidEyeBuffer.f40539a, bArr13, bArr15, this.p, this.q, invalidEyeBuffer.f40540b, iIntValue4);
                    CLMakeupLiveFilter cLMakeupLiveFilter4 = applyEffectCtrl.f40486e;
                    InvalidEyeBuffer invalidEyeBuffer2 = applyEffectCtrl.B;
                    cLMakeupLiveFilter4.D(false, invalidEyeBuffer2.f40539a, bArr13, bArr15, this.p, this.q, invalidEyeBuffer2.f40540b, iIntValue4);
                    bArr14 = bArr15;
                }
            }
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void n() {
            this.D = null;
            this.E = null;
            this.F = null;
            this.G = null;
            this.H = null;
            this.z = null;
            this.I = null;
            this.J = null;
            this.K = null;
            this.L = null;
            this.M = null;
            this.B = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = false;
            this.n = BitmapFactory.decodeFile(ApplyEffectCtrl.this.o, options);
            Object obj = configurationBuilder.f(i2).f40576h;
            Objects.requireNonNull(obj, "eye shadow payload can't be null");
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            int size = immutableList.size();
            TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.EYE_SHADOW), immutableList);
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.EyeShadowConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    EyeShadowConfiguration.this.d(configurationBuilder, i2);
                }
            });
            this.m = performanceCounter.a();
            EyeShadowLinerModel eyeShadowLinerModelB = ApplyEffectCtrl.b(this.f40528b, (EyeShadowLinerPayload) obj);
            this.m.J0();
            byte[][] bArr = eyeShadowLinerModelB.f40524a;
            int length = bArr.length;
            if (size < length) {
                Log.g(5, "ApplyEffectCtrl", o60.h(size, length, "[Eye Shadow left] Color count is less than pattern count. color=", ", pattern="));
            }
            int[] iArr = new int[length];
            int[] iArr2 = new int[length];
            for (int i3 = 0; i3 < Math.min(size, length); i3++) {
                iArr[i3] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i3)).d;
                iArr2[i3] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i3)).f40791e;
            }
            int[] iArr3 = new int[length];
            for (int i4 = 0; i4 < Math.min(size, length); i4++) {
                iArr3[i4] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i4)).l();
            }
            int[] iArr4 = new int[length];
            for (int i5 = 0; i5 < Math.min(size, length); i5++) {
                iArr4[i5] = ((YMKPrimitiveData.MakeupColor) immutableList.get(i5)).i();
            }
            boolean z = eyeShadowLinerModelB.f40526c;
            this.s = z;
            byte[][] bArr2 = this.u;
            int i6 = this.r;
            bArr2[i2] = new byte[i6];
            this.v[i2] = new byte[i6];
            this.A[i2] = new byte[135000];
            this.t[i2] = new int[135000];
            this.D[i2] = bArr;
            this.E[i2] = iArr;
            this.F[i2] = iArr2;
            this.G[i2] = length;
            this.H[i2] = iArr3;
            this.z[i2] = iArr4;
            if (z) {
                byte[][] bArr3 = eyeShadowLinerModelB.f40525b;
                int length2 = bArr3.length;
                if (size < length2) {
                    Log.g(5, "ApplyEffectCtrl", o60.h(size, length2, "[Eye Shadow right] Color count is less than pattern count. color=", ", pattern="));
                }
                this.x[i2] = new byte[i6];
                this.y[i2] = new byte[i6];
                this.C[i2] = new byte[135000];
                this.w[i2] = new int[135000];
                this.I[i2] = bArr3;
                this.J[i2] = iArr;
                this.K[i2] = iArr2;
                this.L[i2] = length2;
                this.M[i2] = iArr3;
                this.B[i2] = iArr4;
            }
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void p(int i2) {
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            LiveMakeupCtrlInterface liveMakeupCtrlInterface = applyEffectCtrl.f40485c;
            BaseVenus baseVenus = applyEffectCtrl.f40488h;
            liveMakeupCtrlInterface.d();
            this.m = performanceCounter.a();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                if (!UIMakeupJNI.CUIMakeupLive_LoadObject3DHDR(baseVenus.f40398a, baseVenus, applyEffectCtrl.n, this.o)) {
                    Log.d("ApplyEffectCtrl", "EyeShadow load hdr file error.");
                }
                if (!UIMakeupJNI.CUIMakeupLive_PreprocessEyeshadowModel(baseVenus.f40398a, baseVenus, this.t[i2], this.D[i2], this.E[i2], this.F[i2], this.G[i2], 450, 300, this.p, this.q, this.H[i2], 2, this.u[i2], this.v[i2], this.z[i2], this.A[i2])) {
                    throw new IllegalArgumentException("PreprocessEyeshadowModel failed.");
                }
                readLock.unlock();
                this.m.J0();
                if (this.s) {
                    readLock.lock();
                    try {
                        if (!UIMakeupJNI.CUIMakeupLive_PreprocessEyeshadowModel(baseVenus.f40398a, baseVenus, this.w[i2], this.I[i2], this.J[i2], this.K[i2], this.L[i2], 450, 300, this.p, this.q, this.M[i2], 2, this.x[i2], this.y[i2], this.B[i2], this.C[i2])) {
                            throw new IllegalArgumentException("PreprocessEyeshadowModel failed.");
                        }
                        readLock.unlock();
                    } catch (Throwable th) {
                        ApplyEffectCtrl.K.unlock();
                        throw th;
                    }
                }
                this.l.J0();
            } catch (Throwable th2) {
                ApplyEffectCtrl.K.unlock();
                throw th2;
            }
        }
    }

    public static final class EyeShadowLinerModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[][] f40524a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[][] f40525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f40526c;
    }

    public final class EyebrowConfiguration extends FeatureConfiguration {
        public volatile PointF[] n;
        public volatile int o;
        public final CLMakeupLiveFilter.LiveEyebrow3DTemplate p;
        public final CLMakeupLiveFilter.LiveEyebrow3DTemplate q;
        public UIShimmer r;
        public volatile VN_EyebrowMode s;

        public EyebrowConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.EYE_BROW, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.EYEBROW, CLMakeupLiveFilter.MakeupLiveFeatures.EYEBROW_WARP);
            this.p = new CLMakeupLiveFilter.LiveEyebrow3DTemplate();
            this.q = new CLMakeupLiveFilter.LiveEyebrow3DTemplate();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            int i2;
            float[] fArr;
            int i3;
            int i4;
            float[] fArr2;
            float[] fArr3;
            float[] fArr4;
            Objects.requireNonNull(ApplyEffectCtrl.this.f40486e);
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter.LiveEyebrow3DTemplate liveEyebrow3DTemplate = this.p;
            if (liveEyebrow3DTemplate.eyebrow3d_template != null) {
                CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
                synchronized (cLMakeupLiveFilter.T3) {
                    try {
                        float[] fArr5 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                        float[] fArr6 = {1.0f, 1.0f, 1.0f};
                        float[] fArr7 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                        float[] fArr8 = {1.0f, 1.0f, 1.0f};
                        cLMakeupLiveFilter.V3 = null;
                        cLMakeupLiveFilter.W3 = 0;
                        cLMakeupLiveFilter.X3 = 0;
                        if (liveEyebrow3DTemplate.IsUseTexture()) {
                            cLMakeupLiveFilter.V3 = liveEyebrow3DTemplate.eyebrow3d_template;
                            cLMakeupLiveFilter.W3 = liveEyebrow3DTemplate.texture_width;
                            cLMakeupLiveFilter.X3 = liveEyebrow3DTemplate.texture_height;
                            i3 = cLMakeupLiveFilter.Y3;
                            fArr6[2] = 1.0f;
                            fArr6[1] = 1.0f;
                            fArr6[0] = 1.0f;
                        } else {
                            i3 = -1;
                        }
                        int i5 = 0;
                        while (i5 < 3) {
                            CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = cLMakeupLiveFilter.U3;
                            float[] fArr9 = fArr8;
                            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = live3DRenderDataArr[i5];
                            if (live3DRenderData == null) {
                                fArr3 = fArr9;
                                fArr4 = fArr6;
                                fArr2 = fArr7;
                                i4 = i5;
                                live3DRenderDataArr[i4] = new CLShare3DRelatedClasses.Live3DRenderData(null, null, null, fArr5, fArr4, fArr2, 1.0f, fArr3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                            } else {
                                i4 = i5;
                                float[] fArr10 = fArr5;
                                live3DRenderData.SetRenderParameters(fArr10, fArr6, fArr7, 1.0f, fArr9, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                                fArr5 = fArr10;
                                fArr2 = fArr7;
                                fArr3 = fArr9;
                                fArr4 = fArr6;
                            }
                            cLMakeupLiveFilter.U3[i4].SetDiffuseTextureID(i3);
                            i5 = i4 + 1;
                            fArr6 = fArr4;
                            fArr7 = fArr2;
                            fArr8 = fArr3;
                        }
                        cLMakeupLiveFilter.Z3 = true;
                        cLMakeupLiveFilter.a4 = true;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            CLMakeupLiveFilter.LiveEyebrow3DTemplate liveEyebrow3DTemplate2 = this.q;
            if (liveEyebrow3DTemplate2.eyebrow3d_template != null) {
                CLMakeupLiveFilter cLMakeupLiveFilter2 = ApplyEffectCtrl.this.f40486e;
                synchronized (cLMakeupLiveFilter2.T3) {
                    try {
                        float[] fArr11 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                        float[] fArr12 = {1.0f, 1.0f, 1.0f};
                        float[] fArr13 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                        float[] fArr14 = {1.0f, 1.0f, 1.0f};
                        cLMakeupLiveFilter2.c4 = null;
                        cLMakeupLiveFilter2.d4 = 0;
                        cLMakeupLiveFilter2.e4 = 0;
                        if (liveEyebrow3DTemplate2.IsUseTexture()) {
                            cLMakeupLiveFilter2.c4 = liveEyebrow3DTemplate2.eyebrow3d_template;
                            cLMakeupLiveFilter2.d4 = liveEyebrow3DTemplate2.texture_width;
                            cLMakeupLiveFilter2.e4 = liveEyebrow3DTemplate2.texture_height;
                            i2 = cLMakeupLiveFilter2.f4;
                            fArr12[2] = 1.0f;
                            fArr12[1] = 1.0f;
                            fArr12[0] = 1.0f;
                        } else {
                            i2 = -1;
                        }
                        int i6 = 0;
                        while (i6 < 3) {
                            CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr2 = cLMakeupLiveFilter2.b4;
                            float[] fArr15 = fArr14;
                            CLShare3DRelatedClasses.Live3DRenderData live3DRenderData2 = live3DRenderDataArr2[i6];
                            if (live3DRenderData2 == null) {
                                fArr = fArr13;
                                live3DRenderDataArr2[i6] = new CLShare3DRelatedClasses.Live3DRenderData(null, null, null, fArr11, fArr12, fArr, 1.0f, fArr15, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                            } else {
                                float[] fArr16 = fArr12;
                                float[] fArr17 = fArr11;
                                live3DRenderData2.SetRenderParameters(fArr17, fArr16, fArr13, 1.0f, fArr15, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                                fArr11 = fArr17;
                                fArr = fArr13;
                                fArr15 = fArr15;
                                fArr12 = fArr16;
                            }
                            cLMakeupLiveFilter2.b4[i6].SetDiffuseTextureID(i2);
                            i6++;
                            fArr13 = fArr;
                            fArr14 = fArr15;
                        }
                        cLMakeupLiveFilter2.g4 = true;
                        cLMakeupLiveFilter2.h4 = true;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            CLMakeupLiveFilter cLMakeupLiveFilter3 = ApplyEffectCtrl.this.f40486e;
            int i7 = this.o;
            for (int i8 = 0; i8 < 3; i8++) {
                float[] fArr18 = cLMakeupLiveFilter3.Z[i8].M0;
                fArr18[0] = Color.red(i7) / 255.0f;
                fArr18[1] = Color.green(i7) / 255.0f;
                fArr18[2] = Color.blue(i7) / 255.0f;
            }
            cLMakeupLiveFilter3.getClass();
            UIShimmer uIShimmer = this.r;
            if (UIMakeupJNI.UIShimmer_getColor(uIShimmer.f40413a, uIShimmer) != 0) {
                CLMakeupLiveFilter cLMakeupLiveFilter4 = ApplyEffectCtrl.this.f40486e;
                UIShimmer uIShimmer2 = this.r;
                int iUIShimmer_getColor = UIMakeupJNI.UIShimmer_getColor(uIShimmer2.f40413a, uIShimmer2);
                for (int i9 = 0; i9 < 3; i9++) {
                    float[] fArr19 = cLMakeupLiveFilter4.Z[i9].N0;
                    fArr19[0] = Color.red(iUIShimmer_getColor) / 255.0f;
                    fArr19[1] = Color.green(iUIShimmer_getColor) / 255.0f;
                    fArr19[2] = Color.blue(iUIShimmer_getColor) / 255.0f;
                }
                cLMakeupLiveFilter4.getClass();
            }
            CLMakeupLiveFilter cLMakeupLiveFilter5 = ApplyEffectCtrl.this.f40486e;
            UIShimmer uIShimmer3 = this.r;
            int iUIShimmer_getIntensity = UIMakeupJNI.UIShimmer_getIntensity(uIShimmer3.f40413a, uIShimmer3);
            for (int i10 = 0; i10 < 3; i10++) {
                cLMakeupLiveFilter5.Z[i10].P0 = iUIShimmer_getIntensity;
            }
            cLMakeupLiveFilter5.getClass();
            synchronized (ApplyEffectCtrl.this.D) {
                ApplyEffectCtrl.this.getClass();
                ApplyEffectCtrl.this.getClass();
                ApplyEffectCtrl.this.getClass();
            }
            this.l.J0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            char c2;
            char c3;
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            String str = configurationBuilder.f(i2).f40571a;
            Object obj = configurationBuilder.f(i2).f40576h;
            if (!(obj instanceof EyebrowPayload)) {
                md.n("Eyebrow's payload is not valid!");
                return;
            }
            EyebrowPayload eyebrowPayload = (EyebrowPayload) obj;
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            List listF = this.f40528b.f(str);
            final YMKPrimitiveData.MakeupColor makeupColor = new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) immutableList.get(0));
            YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) listF.get(0);
            this.o = makeupColor.d;
            List listF2 = this.f40528b.f(str);
            if (!listF2.isEmpty()) {
                String str2 = ((YMKPrimitiveData.Mask) listF2.get(0)).J;
            }
            this.s = this.f40528b.i(configurationBuilder.f(i2).f40571a).f40827f.b();
            LiveSettingCtrl liveSettingCtrl = this.f40528b;
            PointF[] pointFArr = new PointF[9];
            for (int i3 = 0; i3 < 9; i3++) {
                pointFArr[i3] = new PointF();
            }
            List listF3 = liveSettingCtrl.f(str);
            if (listF3.isEmpty()) {
                c2 = '\b';
                c3 = 7;
            } else {
                YMKPrimitiveData.Mask mask2 = (YMKPrimitiveData.Mask) listF3.get(0);
                PointF pointF = pointFArr[0];
                c2 = '\b';
                Point point = mask2.K;
                c3 = 7;
                pointF.x = point.x;
                pointF.y = point.y;
                PointF pointF2 = pointFArr[1];
                Point point2 = mask2.L;
                pointF2.x = point2.x;
                pointF2.y = point2.y;
                PointF pointF3 = pointFArr[2];
                Point point3 = mask2.M;
                pointF3.x = point3.x;
                pointF3.y = point3.y;
                PointF pointF4 = pointFArr[3];
                Point point4 = mask2.T;
                pointF4.x = point4.x;
                pointF4.y = point4.y;
                PointF pointF5 = pointFArr[4];
                Point point5 = mask2.U;
                pointF5.x = point5.x;
                pointF5.y = point5.y;
                PointF pointF6 = pointFArr[5];
                Point point6 = mask2.V;
                pointF6.x = point6.x;
                pointF6.y = point6.y;
                PointF pointF7 = pointFArr[6];
                Point point7 = mask2.W;
                pointF7.x = point7.x;
                pointF7.y = point7.y;
                PointF pointF8 = pointFArr[7];
                Point point8 = mask2.X;
                pointF8.x = point8.x;
                pointF8.y = point8.y;
                PointF pointF9 = pointFArr[8];
                Point point9 = mask2.Y;
                pointF9.x = point9.x;
                pointF9.y = point9.y;
            }
            this.n = pointFArr;
            UIShimmer uIShimmer = eyebrowPayload.f40625h;
            this.r = uIShimmer;
            if (uIShimmer == null || makeupColor.f40791e <= 0) {
                this.r = new UIShimmer(0, 0, 0, 0);
            }
            List listF4 = this.f40528b.f(str);
            String str3 = listF4.isEmpty() ? null : ((YMKPrimitiveData.Mask) listF4.get(0)).J;
            Bitmap bitmapA = TextUtils.isEmpty(str3) ? null : BitmapUtils.a(PfCommons.b(), str3, BitmapUtils.f40997a);
            Objects.requireNonNull(bitmapA);
            Bitmap bitmapExtractAlpha = bitmapA.extractAlpha();
            ImageUtils.b(bitmapA);
            byte[] bArrB = EyeModel.b(bitmapExtractAlpha);
            ImageUtils.b(bitmapExtractAlpha);
            b bVar = new b();
            bVar.width = bitmapA.getWidth();
            bVar.height = bitmapA.getHeight();
            bVar.stride = bitmapA.getWidth();
            bVar.data = bArrB;
            bVar.model_eyebrow_head = this.n[0];
            bVar.model_eyebrow_top = this.n[1];
            bVar.model_eyebrow_tail = this.n[2];
            bVar.model_eyebrow_upper1 = this.n[3];
            bVar.model_eyebrow_upper2 = this.n[4];
            bVar.model_eyebrow_upper3 = this.n[5];
            bVar.model_eyebrow_lower1 = this.n[6];
            bVar.model_eyebrow_lower2 = this.n[c3];
            bVar.model_eyebrow_lower3 = this.n[c2];
            bVar.mode = this.s.a();
            List listF5 = this.f40528b.f(str);
            String str4 = listF5.isEmpty() ? null : ((YMKPrimitiveData.Mask) listF5.get(0)).Z;
            Bitmap bitmapA2 = TextUtils.isEmpty(str4) ? null : BitmapUtils.a(PfCommons.b(), str4, BitmapUtils.f40997a);
            if (bitmapA2 != null) {
                Bitmap bitmapExtractAlpha2 = bitmapA2.extractAlpha();
                ImageUtils.b(bitmapA2);
                bVar.feather_data = EyeModel.b(bitmapExtractAlpha2);
                ImageUtils.b(bitmapExtractAlpha2);
            }
            b bVar2 = new b();
            b bVar3 = new b();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                UIShimmer uIShimmer2 = this.r;
                int iUIShimmer_getDensity = UIMakeupJNI.UIShimmer_getDensity(uIShimmer2.f40413a, uIShimmer2);
                UIShimmer uIShimmer3 = this.r;
                if (!UIMakeupJNI.CUIMakeupLive_InitializeEyebrowTexture(baseVenus.f40398a, baseVenus, bVar, bVar2, iUIShimmer_getDensity, UIMakeupJNI.UIShimmer_getGranularity(uIShimmer3.f40413a, uIShimmer3), bVar3)) {
                    throw new IllegalArgumentException("InitializeEyebrowTexture failed.");
                }
                readLock.unlock();
                this.p.eyebrow3d_template = ByteBuffer.wrap(bVar2.data);
                CLMakeupLiveFilter.LiveEyebrow3DTemplate liveEyebrow3DTemplate = this.p;
                liveEyebrow3DTemplate.texture_width = bVar2.width;
                liveEyebrow3DTemplate.texture_height = bVar2.height;
                byte[] bArr = bVar3.data;
                if (bArr != null) {
                    this.q.eyebrow3d_template = ByteBuffer.wrap(bArr);
                    CLMakeupLiveFilter.LiveEyebrow3DTemplate liveEyebrow3DTemplate2 = this.q;
                    liveEyebrow3DTemplate2.texture_width = bVar3.width;
                    liveEyebrow3DTemplate2.texture_height = bVar3.height;
                }
                final LiveParameters.Eyebrow.Setting setting = new LiveParameters.Eyebrow.Setting(this.s, makeupColor.f40791e, eyebrowPayload.f40620a, eyebrowPayload.f40621b, eyebrowPayload.f40622c, eyebrowPayload.d, eyebrowPayload.f40623e, mask.S, eyebrowPayload.f40624f, eyebrowPayload.g, mask.a0, mask.b0, this.r);
                f(new Runnable(configurationBuilder, i2, makeupColor, setting) { // from class: com.perfectcorp.perfectlib.makeupcam.camera.r

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ YMKPrimitiveData.MakeupColor f40921c;
                    public final /* synthetic */ LiveParameters.Eyebrow.Setting d;

                    {
                        this.f40921c = makeupColor;
                        this.d = setting;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ApplyEffectCtrl.EyebrowConfiguration eyebrowConfiguration = this.f40920b;
                        YMKPrimitiveData.MakeupColor makeupColor2 = this.f40921c;
                        LiveParameters.Eyebrow.Setting setting2 = this.d;
                        eyebrowConfiguration.e(makeupColor2);
                        LiveSettingCtrl liveSettingCtrl2 = eyebrowConfiguration.f40528b;
                        liveSettingCtrl2.getClass();
                        liveSettingCtrl2.n = setting2;
                    }
                });
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.K.unlock();
                throw th;
            }
        }
    }

    public abstract class FaceArtBaseConfiguration extends FeatureConfiguration {
        public CLMakeupLiveFilter.LiveFaceArtTemplate n;

        public FaceArtBaseConfiguration(ConfigurationBuilder configurationBuilder, BeautyMode beautyMode, CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures) {
            super(ApplyEffectCtrl.this, beautyMode, configurationBuilder, makeupLiveFeatures);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) throws Exception {
            List list = ApplyEffectCtrl.G;
            PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
            this.l = performanceCounter.a();
            this.m = performanceCounter.a();
            List listSingletonList = configurationBuilder.f(i2).f40579k;
            if (MoreCollections.a(listSingletonList)) {
                listSingletonList = Collections.singletonList(configurationBuilder.f(i2).f40571a);
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = listSingletonList.iterator();
            while (it.hasNext()) {
                arrayList.addAll(this.f40528b.f((String) it.next()));
            }
            if (MoreCollections.a(arrayList)) {
                md.n("Empty mask list.");
                return;
            }
            o[] oVarArr = new o[arrayList.size()];
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                oVarArr[i3] = new o();
                YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) arrayList.get(i3);
                Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), mask.f40803b, BitmapUtils.f40997a);
                oVarArr[i3].width = bitmapA.getWidth();
                oVarArr[i3].height = bitmapA.getHeight();
                o oVar = oVarArr[i3];
                oVar.stride = oVar.width << 2;
                oVar.data = LiveMakeupCtrl.i(bitmapA);
                o oVar2 = oVarArr[i3];
                Point point = mask.w;
                oVar2.face_art_roi = new Point(point.x, point.y);
            }
            this.m.close();
            PerformanceCounter performanceCounter2 = PerformanceCounter.f39180b;
            this.m = performanceCounter2.a();
            CLMakeupLiveFilter.LiveFaceArtTemplate liveFaceArtTemplate = new CLMakeupLiveFilter.LiveFaceArtTemplate();
            o oVar3 = new o();
            PerformanceCounter.Tracer tracerA = performanceCounter2.a();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                UIMakeupJNI.CUIMakeupLive_InitializeFaceArtTexture(baseVenus.f40398a, baseVenus, oVarArr, oVar3);
                readLock.unlock();
                tracerA.close();
                byte[] bArr = oVar3.data;
                if (bArr != null) {
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(oVar3.width, oVar3.height, Bitmap.Config.ARGB_8888);
                    liveFaceArtTemplate.faceart_template = bitmapCreateBitmap;
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferWrap);
                    liveFaceArtTemplate.texture_width = oVar3.width;
                    liveFaceArtTemplate.texture_height = oVar3.height;
                }
                this.n = liveFaceArtTemplate;
                this.m.close();
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.K.unlock();
                throw th;
            }
        }
    }

    public final class FaceArtConfiguration extends FaceArtBaseConfiguration {
        public FaceArtConfiguration(ConfigurationBuilder configurationBuilder) {
            super(configurationBuilder, BeautyMode.FACE_ART, CLMakeupLiveFilter.MakeupLiveFeatures.FACEART);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            int i2;
            boolean z;
            int i3;
            float[] fArr;
            float[] fArr2;
            float[] fArr3;
            Objects.requireNonNull(ApplyEffectCtrl.this.f40486e);
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            CLMakeupLiveFilter.LiveFaceArtTemplate liveFaceArtTemplate = this.n;
            synchronized (cLMakeupLiveFilter.I4) {
                try {
                    float[] fArr4 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                    int i4 = 0;
                    boolean z2 = true;
                    float[] fArr5 = {1.0f, 1.0f, 1.0f};
                    float[] fArr6 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                    float[] fArr7 = {1.0f, 1.0f, 1.0f};
                    cLMakeupLiveFilter.K4 = null;
                    if (liveFaceArtTemplate.IsUseTexture()) {
                        cLMakeupLiveFilter.K4 = liveFaceArtTemplate.faceart_template;
                        i2 = cLMakeupLiveFilter.L4;
                        fArr5[2] = 1.0f;
                        fArr5[1] = 1.0f;
                        fArr5[0] = 1.0f;
                    } else {
                        i2 = -1;
                    }
                    for (int i5 = 3; i4 < i5; i5 = 3) {
                        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = cLMakeupLiveFilter.J4;
                        int i6 = i4;
                        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = live3DRenderDataArr[i6];
                        if (live3DRenderData == null) {
                            boolean z3 = z2;
                            fArr2 = fArr4;
                            fArr3 = fArr5;
                            i3 = i6;
                            z = z3;
                            fArr = fArr6;
                            live3DRenderDataArr[i3] = new CLShare3DRelatedClasses.Live3DRenderData(null, null, null, fArr2, fArr3, fArr6, 1.0f, fArr7, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                        } else {
                            z = z2;
                            i3 = i6;
                            fArr = fArr6;
                            float[] fArr8 = fArr7;
                            live3DRenderData.SetRenderParameters(fArr4, fArr5, fArr, 1.0f, fArr8, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                            fArr2 = fArr4;
                            fArr7 = fArr8;
                            fArr3 = fArr5;
                        }
                        cLMakeupLiveFilter.J4[i3].SetDiffuseTextureID(i2);
                        i4 = i3 + 1;
                        fArr6 = fArr;
                        fArr4 = fArr2;
                        fArr5 = fArr3;
                        z2 = z;
                    }
                    boolean z4 = z2;
                    cLMakeupLiveFilter.M4 = z4;
                    cLMakeupLiveFilter.N4 = z4;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.l.J0();
        }
    }

    public final class FaceArtLayer2Configuration extends FaceArtBaseConfiguration {
        public FaceArtLayer2Configuration(ConfigurationBuilder configurationBuilder) {
            super(configurationBuilder, BeautyMode.FACE_ART_LAYER_2, CLMakeupLiveFilter.MakeupLiveFeatures.FACEART_LAYER2);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            int i2;
            boolean z;
            int i3;
            float[] fArr;
            float[] fArr2;
            float[] fArr3;
            Objects.requireNonNull(ApplyEffectCtrl.this.f40486e);
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            CLMakeupLiveFilter.LiveFaceArtTemplate liveFaceArtTemplate = this.n;
            synchronized (cLMakeupLiveFilter.Q4) {
                try {
                    float[] fArr4 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                    int i4 = 0;
                    boolean z2 = true;
                    float[] fArr5 = {1.0f, 1.0f, 1.0f};
                    float[] fArr6 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                    float[] fArr7 = {1.0f, 1.0f, 1.0f};
                    cLMakeupLiveFilter.S4 = null;
                    if (liveFaceArtTemplate.IsUseTexture()) {
                        cLMakeupLiveFilter.S4 = liveFaceArtTemplate.faceart_template;
                        i2 = cLMakeupLiveFilter.T4;
                        fArr5[2] = 1.0f;
                        fArr5[1] = 1.0f;
                        fArr5[0] = 1.0f;
                    } else {
                        i2 = -1;
                    }
                    for (int i5 = 3; i4 < i5; i5 = 3) {
                        CLShare3DRelatedClasses.Live3DRenderData[] live3DRenderDataArr = cLMakeupLiveFilter.R4;
                        int i6 = i4;
                        CLShare3DRelatedClasses.Live3DRenderData live3DRenderData = live3DRenderDataArr[i6];
                        if (live3DRenderData == null) {
                            boolean z3 = z2;
                            fArr2 = fArr4;
                            fArr3 = fArr5;
                            i3 = i6;
                            z = z3;
                            fArr = fArr6;
                            live3DRenderDataArr[i3] = new CLShare3DRelatedClasses.Live3DRenderData(null, null, null, fArr2, fArr3, fArr6, 1.0f, fArr7, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                        } else {
                            z = z2;
                            i3 = i6;
                            fArr = fArr6;
                            float[] fArr8 = fArr7;
                            live3DRenderData.SetRenderParameters(fArr4, fArr5, fArr, 1.0f, fArr8, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f);
                            fArr2 = fArr4;
                            fArr7 = fArr8;
                            fArr3 = fArr5;
                        }
                        cLMakeupLiveFilter.R4[i3].SetDiffuseTextureID(i2);
                        i4 = i3 + 1;
                        fArr6 = fArr;
                        fArr4 = fArr2;
                        fArr5 = fArr3;
                        z2 = z;
                    }
                    boolean z4 = z2;
                    cLMakeupLiveFilter.U4 = z4;
                    cLMakeupLiveFilter.V4 = z4;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.l.J0();
        }
    }

    public class FaceContourConfiguration extends FeatureConfiguration {
        public Bitmap A;
        public int B;
        public int n;
        public int o;
        public Point p;
        public int q;
        public int r;
        public int s;
        public int t;
        public Bitmap u;
        public Bitmap v;
        public Bitmap w;
        public int x;
        public int y;
        public Point z;

        public FaceContourConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.FACE_CONTOUR, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.FACE_CONTOUR);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) throws Throwable {
            Object obj;
            Objects.requireNonNull(ApplyEffectCtrl.this.f40486e);
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            int i2 = this.B;
            int i3 = this.n;
            int i4 = this.o;
            Point point = this.p;
            int i5 = point.x;
            int i6 = point.y;
            int i7 = this.q;
            Bitmap bitmap = this.u;
            int i8 = this.t;
            Bitmap bitmapH1 = this.w;
            Bitmap bitmapH2 = this.v;
            int i9 = this.x;
            int i10 = this.y;
            Point point2 = this.z;
            int i11 = point2.x;
            int i12 = point2.y;
            Bitmap bitmapH3 = bitmap;
            Bitmap bitmap2 = this.A;
            cLMakeupLiveFilter.getClass();
            if (bitmapH3 == null) {
                bitmapH3 = CLMakeupLiveFilter.h1();
            }
            Bitmap bitmap3 = bitmapH3;
            if (bitmapH2 == null) {
                bitmapH2 = CLMakeupLiveFilter.h1();
            }
            Bitmap bitmapH4 = bitmap2 == null ? CLMakeupLiveFilter.h1() : bitmap2;
            if (bitmapH1 == null) {
                bitmapH1 = CLMakeupLiveFilter.h1();
            }
            int i13 = i2;
            Object obj2 = cLMakeupLiveFilter.i5;
            synchronized (obj2) {
                try {
                    try {
                        cLMakeupLiveFilter.k5 = bitmapH2;
                        cLMakeupLiveFilter.m5 = bitmap3;
                        cLMakeupLiveFilter.o5 = bitmapH1;
                        cLMakeupLiveFilter.q5 = bitmapH4;
                        int i14 = 0;
                        while (i14 < 3) {
                            CLMakeupLiveFaceContourFilter.a[] aVarArr = cLMakeupLiveFilter.j5;
                            if (aVarArr[i14] == null) {
                                aVarArr[i14] = new CLMakeupLiveFaceContourFilter.a();
                            }
                            int i15 = i14;
                            Bitmap bitmap4 = bitmapH2;
                            Object obj3 = obj2;
                            int i16 = i13;
                            int i17 = i10;
                            try {
                                int i18 = i12;
                                int i19 = i11;
                                Bitmap bitmap5 = bitmapH4;
                                cLMakeupLiveFilter.j5[i14].a(i16, i3, i4, i5, i6, i7, cLMakeupLiveFilter.n5, i8, cLMakeupLiveFilter.p5, cLMakeupLiveFilter.l5, bitmap4.getHeight(), bitmap4.getWidth(), i9, i17, i19, i18, cLMakeupLiveFilter.r5, bitmap5.getHeight(), bitmap5.getWidth());
                                i14 = i15 + 1;
                                bitmapH4 = bitmap5;
                                i10 = i17;
                                i11 = i19;
                                i12 = i18;
                                bitmapH2 = bitmap4;
                                i13 = i16;
                                obj2 = obj3;
                            } catch (Throwable th) {
                                th = th;
                                obj = obj3;
                                throw th;
                            }
                        }
                        Object obj4 = obj2;
                        cLMakeupLiveFilter.t5 = true;
                        this.l.J0();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj = obj2;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:10:0x003e  */
        /* JADX WARN: Code duplicated, block: B:19:0x0059  */
        /* JADX WARN: Code duplicated, block: B:34:0x0085  */
        /* JADX WARN: Code duplicated, block: B:71:0x010b  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, final int i2) {
            int i3;
            int i4;
            int iMax;
            int i5;
            int iMax2;
            int i6;
            FeatureConfiguration.i(configurationBuilder, i2);
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            final FaceContourPayload faceContourPayload = (FaceContourPayload) configurationBuilder.f(i2).f40576h;
            FaceContourPayload.Setting setting = faceContourPayload.f40632a;
            FaceContourPayload.Setting setting2 = faceContourPayload.f40633b;
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f40922b.d(configurationBuilder, i2);
                    FaceContourPayload faceContourPayload2 = faceContourPayload;
                    faceContourPayload2.getClass();
                    int andIncrement = FaceContourPayload.Setting.f40638k.getAndIncrement();
                    FaceContourPayload.Setting setting3 = faceContourPayload2.f40632a;
                    if (setting3 != null && setting3.f40639a == -1) {
                        setting3.f40639a = andIncrement;
                    }
                    FaceContourPayload.Setting setting4 = faceContourPayload2.f40633b;
                    if (setting4 == null || setting4.f40639a != -1) {
                        return;
                    }
                    setting4.f40639a = andIncrement;
                }
            });
            this.B = faceContourPayload.f40634c;
            int i7 = 0;
            if (setting == null) {
                i3 = 0;
            } else {
                ImmutableList immutableList = setting.g;
                int i8 = setting.f40646j;
                if (i8 < 0 || i8 >= immutableList.size()) {
                    i3 = 0;
                } else {
                    i3 = ((YMKPrimitiveData.MakeupColor) immutableList.get(i8)).d;
                }
            }
            this.n = i3;
            if (setting == null) {
                i4 = 0;
            } else {
                ImmutableList immutableList2 = setting.g;
                int i9 = setting.f40646j;
                if (i9 < 0 || i9 >= immutableList2.size()) {
                    i4 = 0;
                } else {
                    i4 = ((YMKPrimitiveData.MakeupColor) immutableList2.get(i9)).f40791e;
                }
            }
            this.o = i4;
            if (i4 <= 0 || setting == null) {
                iMax = 0;
            } else {
                ImmutableList immutableList3 = setting.g;
                int i10 = setting.f40646j;
                iMax = Math.max((i10 < 0 || i10 >= immutableList3.size()) ? 0 : ((YMKPrimitiveData.MakeupColor) immutableList3.get(i10)).l(), 0);
            }
            this.q = iMax;
            int i11 = 50;
            if (setting == null) {
                i5 = 50;
            } else {
                ImmutableList immutableList4 = setting.g;
                int i12 = setting.f40646j;
                i5 = (i12 < 0 || i12 >= immutableList4.size()) ? 50 : ((YMKPrimitiveData.MakeupColor) immutableList4.get(i12)).g.l;
                if (i5 < 0) {
                    i5 = 50;
                }
            }
            this.r = i5;
            if (setting != null) {
                ImmutableList immutableList5 = setting.g;
                int i13 = setting.f40646j;
                int i14 = (i13 < 0 || i13 >= immutableList5.size()) ? 50 : ((YMKPrimitiveData.MakeupColor) immutableList5.get(i13)).g.m;
                if (i14 >= 0) {
                    i11 = i14;
                }
            }
            this.s = i11;
            if (setting == null) {
                iMax2 = 0;
            } else {
                ImmutableList immutableList6 = setting.g;
                int i15 = setting.f40646j;
                iMax2 = Math.max((i15 < 0 || i15 >= immutableList6.size()) ? 0 : ((YMKPrimitiveData.MakeupColor) immutableList6.get(i15)).g.f40799i, 0);
            }
            this.t = iMax2;
            LiveSettingCtrl liveSettingCtrl = this.f40528b;
            this.v = FaceContourModel.b(liveSettingCtrl, setting);
            this.p = FaceContourModel.d(liveSettingCtrl, setting);
            if (setting2 == null) {
                i6 = 0;
            } else {
                ImmutableList immutableList7 = setting2.g;
                int i16 = setting2.f40646j;
                if (i16 < 0 || i16 >= immutableList7.size()) {
                    i6 = 0;
                } else {
                    i6 = ((YMKPrimitiveData.MakeupColor) immutableList7.get(i16)).d;
                }
            }
            this.x = i6;
            if (setting2 != null) {
                ImmutableList immutableList8 = setting2.g;
                int i17 = setting2.f40646j;
                if (i17 >= 0 && i17 < immutableList8.size()) {
                    i7 = ((YMKPrimitiveData.MakeupColor) immutableList8.get(i17)).f40791e;
                }
            }
            this.y = i7;
            this.A = FaceContourModel.b(liveSettingCtrl, setting2);
            this.z = FaceContourModel.d(liveSettingCtrl, setting2);
            FaceContourProfile faceContourProfileC = FaceContourModel.c(this.v, this.p);
            FaceContourProfile faceContourProfileC2 = FaceContourModel.c(this.A, this.z);
            FaceContourProfile faceContourProfile = new FaceContourProfile();
            FaceContourProfile faceContourProfile2 = new FaceContourProfile();
            FaceContourProfile faceContourProfile3 = new FaceContourProfile();
            ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
            readLock.lock();
            try {
                BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                if (!UIMakeupJNI.CUIMakeupLive_InitializeFaceContour(baseVenus.f40398a, baseVenus, faceContourProfileC, faceContourProfileC2, faceContourProfile, faceContourProfile2, faceContourProfile3, this.q, this.r, this.s, this.t)) {
                    throw new IllegalArgumentException("InitializeFaceContour failed.");
                }
                readLock.unlock();
                byte[] bArr = faceContourProfile.m_data;
                if (bArr != null) {
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(faceContourProfile.m_width, faceContourProfile.m_height, Bitmap.Config.ARGB_8888);
                    this.u = bitmapCreateBitmap;
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferWrap);
                } else {
                    this.u = null;
                }
                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(faceContourProfile2.m_data);
                int i18 = faceContourProfile2.m_width;
                int i19 = faceContourProfile2.m_height;
                Bitmap.Config config = Bitmap.Config.ALPHA_8;
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i18, i19, config);
                this.A = bitmapCreateBitmap2;
                bitmapCreateBitmap2.copyPixelsFromBuffer(byteBufferWrap2);
                byte[] bArr2 = faceContourProfile3.m_data;
                if (bArr2 != null) {
                    ByteBuffer byteBufferWrap3 = ByteBuffer.wrap(bArr2);
                    Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(faceContourProfile3.m_stride, faceContourProfile3.m_height, config);
                    this.w = bitmapCreateBitmap3;
                    bitmapCreateBitmap3.copyPixelsFromBuffer(byteBufferWrap3);
                } else {
                    this.w = null;
                }
                Point point = this.z;
                Point point2 = faceContourProfile2.m_roi_start;
                point.x = point2.x;
                point.y = point2.y;
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.K.unlock();
                throw th;
            }
        }
    }

    public static abstract class FeatureConfiguration implements Configuration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CLMakeupLiveFilter f40527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LiveSettingCtrl f40528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyMode f40529c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f40530e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f40531f = new ArrayList();
        public final ArrayList g = new ArrayList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ArrayList f40532h = new ArrayList();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f40533i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f40534j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f40535k;
        public PerformanceCounter.Tracer l;
        public PerformanceCounter.Tracer m;

        public static final class UnsupportedBeautyModeException extends IllegalStateException {
            public UnsupportedBeautyModeException(BeautyMode beautyMode, BeautyMode beautyMode2) {
                super("Supported BeautyMode=" + beautyMode + ", Given BeautyMode=" + beautyMode2);
            }
        }

        public FeatureConfiguration(ApplyEffectCtrl applyEffectCtrl, BeautyMode beautyMode, ConfigurationBuilder configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures... makeupLiveFeaturesArr) {
            this.f40527a = applyEffectCtrl.f40486e;
            this.f40528b = applyEffectCtrl.f40489i;
            BaseVenus baseVenus = applyEffectCtrl.f40488h;
            boolean z = baseVenus.f40074e && baseVenus.f40075f;
            this.f40535k = z;
            this.f40529c = beautyMode;
            boolean z2 = !z && configurationBuilder.d;
            this.d = z2;
            this.f40530e = ImmutableList.v(makeupLiveFeaturesArr);
            if (z2) {
                final String str = configurationBuilder.f(0).f40571a;
                final String str2 = configurationBuilder.f(0).f40572b;
                final String str3 = configurationBuilder.f(0).f40573c;
                final String str4 = configurationBuilder.f(0).f40577i;
                final String str5 = configurationBuilder.f(0).f40578j;
                final Object obj = configurationBuilder.f(0).f40576h;
                final int i2 = 0;
                f(new Runnable(this) { // from class: j7

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ApplyEffectCtrl.FeatureConfiguration f71316c;

                    {
                        this.f71316c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = i2;
                        Object obj2 = obj;
                        String str6 = str5;
                        String str7 = str4;
                        String str8 = str3;
                        String str9 = str2;
                        String str10 = str;
                        ApplyEffectCtrl.FeatureConfiguration featureConfiguration = this.f71316c;
                        switch (i3) {
                            case 0:
                                LiveSettingCtrl liveSettingCtrl = featureConfiguration.f40528b;
                                BeautyMode beautyMode2 = featureConfiguration.f40529c;
                                liveSettingCtrl.f40745e.put(beautyMode2, str10);
                                liveSettingCtrl.f40746f.put(beautyMode2, str9);
                                liveSettingCtrl.g.put(beautyMode2, str8);
                                liveSettingCtrl.p.put(beautyMode2, str7);
                                liveSettingCtrl.q.put(beautyMode2, str6);
                                ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
                                if (obj2 != null) {
                                    concurrentHashMap.put(beautyMode2, obj2);
                                } else {
                                    concurrentHashMap.remove(beautyMode2);
                                }
                                break;
                            default:
                                LiveSettingCtrl liveSettingCtrl2 = featureConfiguration.f40528b;
                                BeautyMode beautyMode3 = featureConfiguration.f40529c;
                                liveSettingCtrl2.f40745e.put(beautyMode3, str10);
                                liveSettingCtrl2.f40746f.put(beautyMode3, str9);
                                liveSettingCtrl2.g.put(beautyMode3, str8);
                                liveSettingCtrl2.p.put(beautyMode3, str7);
                                liveSettingCtrl2.q.put(beautyMode3, str6);
                                ConcurrentHashMap concurrentHashMap2 = liveSettingCtrl2.l;
                                if (obj2 != null) {
                                    concurrentHashMap2.put(beautyMode3, obj2);
                                } else {
                                    concurrentHashMap2.remove(beautyMode3);
                                }
                                break;
                        }
                    }
                });
                return;
            }
            for (int i3 = 0; i3 < 3; i3++) {
                final String str6 = configurationBuilder.f(i3).f40571a;
                final String str7 = configurationBuilder.f(i3).f40572b;
                final String str8 = configurationBuilder.f(i3).f40573c;
                final String str9 = configurationBuilder.f(i3).f40577i;
                final String str10 = configurationBuilder.f(i3).f40578j;
                final Object obj2 = configurationBuilder.f(i3).f40576h;
                final int i4 = 1;
                f(new Runnable(this) { // from class: j7

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ApplyEffectCtrl.FeatureConfiguration f71316c;

                    {
                        this.f71316c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = i4;
                        Object obj3 = obj2;
                        String str11 = str10;
                        String str12 = str9;
                        String str13 = str8;
                        String str14 = str7;
                        String str15 = str6;
                        ApplyEffectCtrl.FeatureConfiguration featureConfiguration = this.f71316c;
                        switch (i5) {
                            case 0:
                                LiveSettingCtrl liveSettingCtrl = featureConfiguration.f40528b;
                                BeautyMode beautyMode2 = featureConfiguration.f40529c;
                                liveSettingCtrl.f40745e.put(beautyMode2, str15);
                                liveSettingCtrl.f40746f.put(beautyMode2, str14);
                                liveSettingCtrl.g.put(beautyMode2, str13);
                                liveSettingCtrl.p.put(beautyMode2, str12);
                                liveSettingCtrl.q.put(beautyMode2, str11);
                                ConcurrentHashMap concurrentHashMap = liveSettingCtrl.l;
                                if (obj3 != null) {
                                    concurrentHashMap.put(beautyMode2, obj3);
                                } else {
                                    concurrentHashMap.remove(beautyMode2);
                                }
                                break;
                            default:
                                LiveSettingCtrl liveSettingCtrl2 = featureConfiguration.f40528b;
                                BeautyMode beautyMode3 = featureConfiguration.f40529c;
                                liveSettingCtrl2.f40745e.put(beautyMode3, str15);
                                liveSettingCtrl2.f40746f.put(beautyMode3, str14);
                                liveSettingCtrl2.g.put(beautyMode3, str13);
                                liveSettingCtrl2.p.put(beautyMode3, str12);
                                liveSettingCtrl2.q.put(beautyMode3, str11);
                                ConcurrentHashMap concurrentHashMap2 = liveSettingCtrl2.l;
                                if (obj3 != null) {
                                    concurrentHashMap2.put(beautyMode3, obj3);
                                } else {
                                    concurrentHashMap2.remove(beautyMode3);
                                }
                                break;
                        }
                    }
                });
            }
        }

        public static void i(ConfigurationBuilder configurationBuilder, int i2) {
            try {
                configurationBuilder.b(i2);
            } catch (Throwable th) {
                StringBuilder sb = new StringBuilder("Invalid ConfigurationBuilder. BeautyMode=");
                sb.append(configurationBuilder.f40508c);
                Setting settingF = configurationBuilder.f(i2);
                sb.append(", ");
                sb.append(settingF);
                throw new IllegalArgumentException(sb.toString(), th);
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final YMKPrimitiveData.Look a() {
            return null;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final void b() {
            boolean zIsValid = isValid();
            boolean z = this.f40535k;
            if (!zIsValid) {
                if (z) {
                    g();
                    return;
                } else {
                    k();
                    c();
                    return;
                }
            }
            m(Collections.unmodifiableList(this.g), Collections.unmodifiableList(this.f40532h));
            Iterator it = this.f40531f.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
            if (z) {
                j();
            } else {
                h();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void c() {
            this.f40528b.a(this.f40529c);
            bz bzVarListIterator = ((ImmutableList) this.f40530e).listIterator(0);
            while (bzVarListIterator.hasNext()) {
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = (CLMakeupLiveFilter.MakeupLiveFeatures) bzVarListIterator.next();
                CLMakeupLiveFilter cLMakeupLiveFilter = this.f40527a;
                cLMakeupLiveFilter.E(makeupLiveFeatures, false);
                cLMakeupLiveFilter.F(makeupLiveFeatures, -1, false);
            }
        }

        public final void d(ConfigurationBuilder configurationBuilder, int i2) {
            this.f40528b.f40747h.put(this.f40529c, configurationBuilder.f(i2).d);
        }

        public final void e(YMKPrimitiveData.MakeupColor makeupColor) {
            ImmutableList immutableListZ;
            LiveSettingCtrl liveSettingCtrl = this.f40528b;
            if (makeupColor != null) {
                liveSettingCtrl.getClass();
                immutableListZ = ImmutableList.z(makeupColor);
            } else {
                immutableListZ = null;
            }
            liveSettingCtrl.f40747h.put(this.f40529c, immutableListZ);
        }

        public final void f(Runnable runnable) {
            this.f40531f.add(runnable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void g() {
            this.f40528b.a(this.f40529c);
            bz bzVarListIterator = ((ImmutableList) this.f40530e).listIterator(0);
            while (bzVarListIterator.hasNext()) {
                this.f40527a.F((CLMakeupLiveFilter.MakeupLiveFeatures) bzVarListIterator.next(), 1, false);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void h() {
            this.f40528b.b(this.f40529c);
            bz bzVarListIterator = ((ImmutableList) this.f40530e).listIterator(0);
            while (bzVarListIterator.hasNext()) {
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = (CLMakeupLiveFilter.MakeupLiveFeatures) bzVarListIterator.next();
                CLMakeupLiveFilter cLMakeupLiveFilter = this.f40527a;
                cLMakeupLiveFilter.E(makeupLiveFeatures, true);
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    cLMakeupLiveFilter.F(makeupLiveFeatures, ((Integer) it.next()).intValue(), true);
                }
                Iterator it2 = this.f40532h.iterator();
                while (it2.hasNext()) {
                    cLMakeupLiveFilter.F(makeupLiveFeatures, ((Integer) it2.next()).intValue(), false);
                }
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public boolean isValid() {
            return this.f40534j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void j() {
            this.f40528b.b(this.f40529c);
            bz bzVarListIterator = ((ImmutableList) this.f40530e).listIterator(0);
            while (bzVarListIterator.hasNext()) {
                CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = (CLMakeupLiveFilter.MakeupLiveFeatures) bzVarListIterator.next();
                CLMakeupLiveFilter cLMakeupLiveFilter = this.f40527a;
                cLMakeupLiveFilter.E(makeupLiveFeatures, true);
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    it.next();
                    cLMakeupLiveFilter.F(makeupLiveFeatures, 1, true);
                }
                Iterator it2 = this.f40532h.iterator();
                while (it2.hasNext()) {
                    it2.next();
                    cLMakeupLiveFilter.F(makeupLiveFeatures, 1, false);
                }
            }
        }

        public void k() {
        }

        public final boolean l(ConfigurationBuilder configurationBuilder, int i2) {
            try {
                o(configurationBuilder, i2);
                p(i2);
                this.g.add(Integer.valueOf(i2));
                return true;
            } catch (Throwable th) {
                Log.i("FeatureConfiguration", "prepare faceIndex = " + i2, th);
                this.f40532h.add(Integer.valueOf(i2));
                return false;
            }
        }

        public abstract void m(List list, List list2);

        public void n() {
        }

        public abstract void o(ConfigurationBuilder configurationBuilder, int i2);

        public void p(int i2) {
        }
    }

    public final class FoundationConfiguration extends FeatureConfiguration {
        public final int[] n;
        public int o;
        public int p;

        public FoundationConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.SKIN_TONER, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.FOUNDATION);
            this.n = new int[3];
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            Objects.requireNonNull(applyEffectCtrl.f40486e);
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            for (int i2 = 0; i2 < 3; i2++) {
                CLMakeupLiveFoundationFilter cLMakeupLiveFoundationFilter = cLMakeupLiveFilter.T[i2];
                cLMakeupLiveFoundationFilter.getClass();
                cLMakeupLiveFoundationFilter.C1 = (int[]) this.n.clone();
            }
            cLMakeupLiveFilter.getClass();
            float f2 = this.o;
            for (int i3 = 0; i3 < 3; i3++) {
                cLMakeupLiveFilter.T[i3].D1 = f2;
            }
            cLMakeupLiveFilter.getClass();
            int i4 = this.p;
            float f3 = i4 != -1 ? i4 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            for (int i5 = 0; i5 < 3; i5++) {
                cLMakeupLiveFilter.T[i5].E1 = f3;
            }
            cLMakeupLiveFilter.getClass();
            this.l.J0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(final ConfigurationBuilder configurationBuilder, int i2) {
            if (configurationBuilder.f(0).f40572b == null || configurationBuilder.f(0).d == null || configurationBuilder.f(0).d.isEmpty()) {
                no0.l(this.f40529c, "FoundationConfiguration");
                return;
            }
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            final YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) configurationBuilder.f(0).d.get(0);
            int i3 = makeupColor.f40788a;
            int[] iArr = this.n;
            iArr[0] = i3;
            iArr[1] = makeupColor.f40789b;
            iArr[2] = makeupColor.f40790c;
            this.o = makeupColor.f40791e;
            this.p = makeupColor.g.f40800j;
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FoundationConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    FoundationConfiguration.this.e(makeupColor);
                }
            });
            this.l.J0();
        }
    }

    public final class HairDyeConfiguration extends FeatureConfiguration {
        public int n;
        public int[] o;
        public int[] p;
        public int[] q;
        public int[] r;
        public int[] s;
        public VN_HairDyeMode t;
        public float u;
        public float v;

        public HairDyeConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.HAIR_DYE, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.HAIR_DYE);
        }

        public static void q(List list, List list2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int i2, int i3, YMKPrimitiveData.HairDyePatternType hairDyePatternType) {
            if (hairDyePatternType != YMKPrimitiveData.HairDyePatternType.ONE_COLOR_OMBRE) {
                iArr[i3] = ((YMKPrimitiveData.MakeupColor) list.get(i2)).f40788a;
                iArr2[i3] = ((YMKPrimitiveData.MakeupColor) list.get(i2)).f40789b;
                iArr3[i3] = ((YMKPrimitiveData.MakeupColor) list.get(i2)).f40790c;
                iArr4[i3] = ((HairDyePayload.Color) list2.get(i2)).f40676b;
                iArr5[i3] = ((HairDyePayload.Color) list2.get(i2)).f40677c;
                return;
            }
            iArr[i3] = ((YMKPrimitiveData.MakeupColor) list.get(0)).f40788a;
            iArr2[i3] = ((YMKPrimitiveData.MakeupColor) list.get(0)).f40789b;
            iArr3[i3] = ((YMKPrimitiveData.MakeupColor) list.get(0)).f40790c;
            if (i2 > list.size() - 1) {
                iArr4[i3] = ((HairDyePayload.Color) list2.get(0)).f40676b;
                iArr5[i3] = ((HairDyePayload.Color) list2.get(0)).f40677c;
            } else {
                iArr4[i3] = 0;
                iArr5[i3] = 0;
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            ReentrantReadWriteLock.WriteLock writeLock = ApplyEffectCtrl.L;
            writeLock.lock();
            try {
                BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                UIMakeupJNI.CUIMakeupLive_SetHairDyeParameter(baseVenus.f40398a, baseVenus, this.o, this.p, this.q, this.r, this.s, this.t.a(), this.n, this.u, this.v);
                writeLock.unlock();
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.L.unlock();
                throw th;
            }
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:41:0x00ff  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            float fB;
            float fC;
            Object obj = configurationBuilder.f(i2).f40576h;
            if (!(obj instanceof HairDyePayload)) {
                md.n("HairDye's payload is not valid!");
                return;
            }
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            HairDyePayload hairDyePayload = (HairDyePayload) obj;
            YMKPrimitiveData.HairDyePatternType hairDyePatternType = hairDyePayload.f40670e;
            ImmutableList immutableList = configurationBuilder.f(0).d;
            List listUnmodifiableList = Collections.unmodifiableList(hairDyePayload.f40667a);
            if (MoreCollections.a(immutableList) || MoreCollections.a(listUnmodifiableList)) {
                md.n("HairDye color count or intensities are empty");
                return;
            }
            YMKPrimitiveData.HairDyePatternType hairDyePatternType2 = YMKPrimitiveData.HairDyePatternType.ONE_COLOR_OMBRE;
            int size = immutableList.size();
            if (hairDyePatternType == hairDyePatternType2) {
                size++;
            }
            this.n = size;
            int size2 = listUnmodifiableList.size();
            int i3 = this.n;
            if (size2 != i3 && hairDyePatternType != hairDyePatternType2) {
                v7.e(", payloadColors size: ", this.n, listUnmodifiableList.size(), "HairDye color count and payload color count are not the same. color size: ");
                return;
            }
            this.o = new int[i3];
            this.p = new int[i3];
            this.q = new int[i3];
            this.r = new int[i3];
            this.s = new int[i3];
            if (hairDyePayload.d) {
                int i4 = 0;
                int i5 = i3 - 1;
                while (i5 >= 0) {
                    q(immutableList, listUnmodifiableList, this.o, this.p, this.q, this.r, this.s, i5, i4, hairDyePayload.f40670e);
                    i5--;
                    i4++;
                }
            } else {
                int i6 = 0;
                int i7 = 0;
                while (i6 < this.n) {
                    q(immutableList, listUnmodifiableList, this.o, this.p, this.q, this.r, this.s, i6, i7, hairDyePayload.f40670e);
                    i6++;
                    i7++;
                }
            }
            YMKPrimitiveData.Pattern patternI = this.f40528b.i(configurationBuilder.f(i2).f40571a);
            float fB2 = hairDyePayload.b();
            Range range = ApplyEffectCtrl.P;
            if (range.apply(Float.valueOf(fB2))) {
                fB = hairDyePayload.b();
            } else if (patternI != null) {
                fB = patternI.n;
                if (!range.apply(Float.valueOf(fB))) {
                    fB = 0.4f;
                }
            } else {
                fB = 0.4f;
            }
            this.u = fB;
            float fC2 = hairDyePayload.c();
            Range range2 = ApplyEffectCtrl.O;
            if (range2.apply(Float.valueOf(fC2))) {
                fC = hairDyePayload.c();
            } else if (patternI != null) {
                fC = patternI.m;
                if (!range2.apply(Float.valueOf(fC))) {
                    fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
            } else {
                fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            this.v = fC;
            this.t = ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).f();
            f(new p(this, configurationBuilder, i2, 2));
            this.l.J0();
        }
    }

    public static class HairDyeSettingHelper {
        public static YMKPrimitiveData.MakeupColor a(YMKPrimitiveData.MakeupColor makeupColor, VN_HairDyeMode vN_HairDyeMode) {
            String str = VN_HairDyeMode.HAIR_DYE_SALON_MODE == vN_HairDyeMode ? "salon" : "";
            int i2 = makeupColor.d;
            YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColor.g;
            int i3 = makeupColor.f40791e;
            String str2 = makeupColor.f40792f;
            int i4 = extraData.f40793a;
            int i5 = extraData.f40794b;
            boolean z = extraData.f40795c;
            int iL = makeupColor.l();
            int[] iArr = extraData.f40797f;
            int i6 = extraData.g;
            int i7 = extraData.f40799i;
            int i8 = extraData.f40800j;
            int i9 = extraData.f40801k;
            int i10 = extraData.l;
            int i11 = extraData.m;
            int i12 = makeupColor.i();
            int i13 = extraData.n;
            int i14 = extraData.o;
            int i15 = i14 == -1 ? 0 : i14;
            int i16 = extraData.p;
            int i17 = i16 == -1 ? 0 : i16;
            int i18 = extraData.q;
            return new YMKPrimitiveData.MakeupColor(i2, i3, str2, i4, i5, z, iL, iArr, i6, str, i7, i8, i9, i10, i11, i12, i13, i15, i17, i18 == -1 ? 0 : i18, extraData.r);
        }

        public static List b(List list, List list2) {
            if (MoreCollections.a(list) || MoreCollections.a(list2) || list.size() != list2.size()) {
                return list2;
            }
            g7 g7Var = new g7(1);
            AbstractList abstractListC = Lists.c(list, g7Var);
            AbstractList abstractListC2 = Lists.c(list2, g7Var);
            int i2 = (abstractListC.containsAll(abstractListC2) && ((String) abstractListC.get(0)).equalsIgnoreCase((String) abstractListC2.get(0))) ? 1 : 0;
            ArrayList arrayList = new ArrayList();
            if (i2 == 0) {
                arrayList.addAll(list2);
                return arrayList;
            }
            for (int i3 = 0; i3 < list2.size(); i3++) {
                arrayList.add(a((YMKPrimitiveData.MakeupColor) list2.get(i3), ((YMKPrimitiveData.MakeupColor) list.get(i3)).f()));
            }
            return arrayList;
        }
    }

    public static final class InvalidEyeBuffer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int[] f40539a = new int[135000];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f40540b = new byte[135000];
    }

    public class LipLinerConfiguration extends FeatureConfiguration {
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;

        public LipLinerConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.LIP_LINER, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.LIPLINER);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void g() {
            ApplyEffectCtrl.this.f40486e.F(CLMakeupLiveFilter.MakeupLiveFeatures.LIPLINER, 1, false);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void j() {
            this.f40528b.b(this.f40529c);
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            CLMakeupLiveFilter cLMakeupLiveFilter = applyEffectCtrl.f40486e;
            CLMakeupLiveFilter.MakeupLiveFeatures makeupLiveFeatures = CLMakeupLiveFilter.MakeupLiveFeatures.LIPLINER;
            cLMakeupLiveFilter.E(makeupLiveFeatures, true);
            applyEffectCtrl.f40486e.F(makeupLiveFeatures, 1, true);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            ApplyEffectCtrl.L.lock();
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    BaseVenus baseVenus = applyEffectCtrl.f40488h;
                    LiveMakeupCtrlInterface liveMakeupCtrlInterface = applyEffectCtrl.f40485c;
                    UIMakeupJNI.CUIMakeupLive_SetLipliner(baseVenus.f40398a, baseVenus, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, iIntValue);
                    applyEffectCtrl.f40486e.Q(iIntValue, liveMakeupCtrlInterface.e());
                    Log.g(3, "ApplyEffectCtrl", "Get Lipliner On Top Setting " + liveMakeupCtrlInterface.e());
                }
                ApplyEffectCtrl.L.unlock();
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.L.unlock();
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            FeatureConfiguration.i(configurationBuilder, i2);
            Object obj = configurationBuilder.f(i2).f40576h;
            if (!(obj instanceof LipLinerPayload)) {
                md.n("Lip liner's payload is not valid!");
                return;
            }
            LipLinerPayload lipLinerPayload = (LipLinerPayload) obj;
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            this.n = lipLinerPayload.f40679a.a();
            YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) configurationBuilder.f(i2).d.get(0);
            this.o = makeupColor.d;
            this.p = makeupColor.f40791e;
            this.q = lipLinerPayload.f40680b;
            this.r = lipLinerPayload.f40681c;
            this.s = lipLinerPayload.d;
            this.t = lipLinerPayload.f40682e;
            this.u = lipLinerPayload.f40683f;
            f(new p(this, configurationBuilder, i2, 3));
            this.l.J0();
        }
    }

    public final class LipStickConfiguration extends FeatureConfiguration {
        public CLMakeupLiveLipStickFilter.BlendMode n;
        public int o;
        public final CLMakeupLiveLipStickFilter.LipStickProfile[][] p;
        public boolean q;
        public int r;
        public int s;
        public int t;
        public int u;
        public UIShimmer v;
        public int w;
        public int x;
        public int y;
        public int z;

        public LipStickConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.LIP_STICK, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.LIPSTICK);
            this.p = new CLMakeupLiveLipStickFilter.LipStickProfile[ApplyEffectCtrl.this.d][];
            this.z = 1;
        }

        public static byte[] q(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i2 = width * height;
            int[] iArr = new int[i2];
            byte[] bArr = new byte[i2];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i3] = (byte) Color.alpha(iArr[i3]);
            }
            return bArr;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void k() {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            CLMakeupLiveLipStickFilter.LipStickProfile[] lipStickProfileArr = {new CLMakeupLiveLipStickFilter.LipStickProfile(0, 0, 0, 0, 0)};
            ApplyEffectCtrl.L.lock();
            int i2 = 0;
            while (i2 < 3) {
                try {
                    BaseVenus baseVenus = applyEffectCtrl.f40488h;
                    UIMakeupJNI.CUIMakeupLive_SetLipstickProfileV2(baseVenus.f40398a, baseVenus, 1, lipStickProfileArr, false, i2, 0, 0);
                    BaseVenus baseVenus2 = applyEffectCtrl.f40488h;
                    CLMakeupLiveLipStickFilter.BlendMode blendMode = CLMakeupLiveLipStickFilter.BlendMode.BRIGHT;
                    UIShimmer uIShimmer = YMKPrimitiveData.f40756a;
                    int i3 = i2;
                    CLMakeupLiveLipStickFilter.LipStickProfile[] lipStickProfileArr2 = lipStickProfileArr;
                    UIMakeupJNI.CUIMakeupLive_SetClassicLipstick(baseVenus2.f40398a, baseVenus2, blendMode, 0, 1, lipStickProfileArr2, false, i3, 50, uIShimmer == null ? 0L : uIShimmer.f40413a, uIShimmer, 0, 0, 0, 0, 0);
                    lipStickProfileArr = lipStickProfileArr2;
                    i2 = i3 + 1;
                } catch (Throwable th) {
                    ApplyEffectCtrl.L.unlock();
                    throw th;
                }
            }
            ApplyEffectCtrl.L.unlock();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl;
            long j2;
            CLMakeupLiveLipStickFilter.LipStickProfile[] lipStickProfileArr;
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            ApplyEffectCtrl.L.lock();
            try {
                for (Iterator it = list.iterator(); it.hasNext(); it = it) {
                    int iIntValue = ((Integer) it.next()).intValue();
                    this.m = PerformanceCounter.f39180b.a();
                    int i2 = this.z;
                    CLMakeupLiveLipStickFilter.LipStickProfile[][] lipStickProfileArr2 = this.p;
                    boolean z = this.d;
                    ApplyEffectCtrl applyEffectCtrl2 = ApplyEffectCtrl.this;
                    if (i2 == 2) {
                        BaseVenus baseVenus = applyEffectCtrl2.f40488h;
                        UIMakeupJNI.CUIMakeupLive_SetLipstickProfileV2(baseVenus.f40398a, baseVenus, this.o, z ? lipStickProfileArr2[0] : lipStickProfileArr2[iIntValue], this.q, iIntValue, this.x, this.y);
                        applyEffectCtrl = applyEffectCtrl2;
                    } else {
                        BaseVenus baseVenus2 = applyEffectCtrl2.f40488h;
                        CLMakeupLiveLipStickFilter.BlendMode blendMode = this.n;
                        int i3 = this.t;
                        int i4 = this.o;
                        CLMakeupLiveLipStickFilter.LipStickProfile[] lipStickProfileArr3 = z ? lipStickProfileArr2[0] : lipStickProfileArr2[iIntValue];
                        boolean z2 = this.q;
                        int i5 = this.u;
                        UIShimmer uIShimmer = this.v;
                        int i6 = this.r;
                        int i7 = this.s;
                        int i8 = this.w;
                        int i9 = this.x;
                        int i10 = this.y;
                        applyEffectCtrl = applyEffectCtrl2;
                        long j3 = baseVenus2.f40398a;
                        if (uIShimmer == null) {
                            lipStickProfileArr = lipStickProfileArr3;
                            j2 = 0;
                        } else {
                            j2 = uIShimmer.f40413a;
                            lipStickProfileArr = lipStickProfileArr3;
                        }
                        UIMakeupJNI.CUIMakeupLive_SetClassicLipstick(j3, baseVenus2, blendMode, i3, i4, lipStickProfileArr, z2, iIntValue, i5, j2, uIShimmer, i6, i7, i8, i9, i10);
                        iIntValue = iIntValue;
                    }
                    applyEffectCtrl.f40486e.z0(applyEffectCtrl.f40488h.d ? 100 : 0, iIntValue);
                    this.m.J0();
                }
                ApplyEffectCtrl.L.unlock();
                this.l.J0();
            } catch (Throwable th) {
                ApplyEffectCtrl.L.unlock();
                throw th;
            }
        }

        /* JADX WARN: Code duplicated, block: B:101:0x0242  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            CLMakeupLiveLipStickFilter.BlendMode blendMode;
            LiveMakeupCtrlInterface liveMakeupCtrlInterface;
            LipShapeParameters lipShapeParameters;
            int i3;
            int i4;
            int i5;
            int i6;
            CLMakeupLiveLipStickFilter.BlendMode blendMode2;
            FeatureConfiguration.i(configurationBuilder, i2);
            Object obj = configurationBuilder.f(i2).f40576h;
            if (!(obj instanceof LipstickPayload)) {
                md.n("LipStick's payload is not valid!");
                return;
            }
            LipstickPayload lipstickPayload = (LipstickPayload) obj;
            List list = lipstickPayload.f40704i;
            int i7 = 1;
            this.z = (list == null || list.isEmpty()) ? 1 : 2;
            this.r = lipstickPayload.f40701e;
            this.s = lipstickPayload.f40702f;
            List list2 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            String str = configurationBuilder.f(i2).f40571a;
            ImmutableList immutableList = configurationBuilder.f(i2).d;
            this.o = immutableList.size();
            int i8 = 0;
            this.t = (immutableList.isEmpty() || immutableList.get(0) == 0) ? LiveSettingCtrl.c(this.f40529c) : ((YMKPrimitiveData.MakeupColor) immutableList.get(0)).f40791e;
            f(new p(this, configurationBuilder, i2, 4));
            CLMakeupLiveLipStickFilter.LipStickProfile[] lipStickProfileArr = new CLMakeupLiveLipStickFilter.LipStickProfile[this.o];
            YMKPrimitiveData.LipstickStyle lipstickStyle = lipstickPayload.f40698a;
            this.q = lipstickStyle.d.a();
            if (this.z == 2) {
                int i9 = 0;
                while (i9 < this.o) {
                    if (list != null && list.size() > i9) {
                        LipstickLayer lipstickLayer = (LipstickLayer) list.get(i9);
                        int i10 = lipstickLayer.f40695b;
                        if (this.o == i7) {
                            i6 = 100;
                        } else {
                            i6 = lipstickStyle.f40773b;
                            if (i9 != 0) {
                                i6 = 100 - i6;
                            }
                        }
                        int i11 = i6;
                        YMKPrimitiveData.MakeupColor makeupColor = (immutableList.isEmpty() || immutableList.size() <= i9) ? new YMKPrimitiveData.MakeupColor(i8) : (YMKPrimitiveData.MakeupColor) immutableList.get(i9);
                        YMKPrimitiveData.LipstickType lipstickType = lipstickLayer.f40694a;
                        switch (AnonymousClass4.d[lipstickType.ordinal()]) {
                            case 1:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.THICK;
                                break;
                            case 2:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.GLOSS;
                                break;
                            case 3:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.HIGH_GLOSS;
                                break;
                            case 4:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.WET_PEARLIZED;
                                break;
                            case 5:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.METALLIC;
                                break;
                            case 6:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.HOLOGRAPHIC;
                                break;
                            case 7:
                                blendMode2 = CLMakeupLiveLipStickFilter.BlendMode.BRIGHT;
                                break;
                            default:
                                az.m(lipstickType, "Unsupported LipstickType: ");
                                return;
                        }
                        int iRed = Color.red(makeupColor.d);
                        int iGreen = Color.green(makeupColor.d);
                        int iBlue = Color.blue(makeupColor.d);
                        YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColor.g;
                        int i12 = extraData.f40793a;
                        int i13 = extraData.f40794b;
                        int i14 = lipstickStyle.f40774c;
                        int i15 = lipstickLayer.f40696c;
                        int i16 = lipstickLayer.d;
                        UIShimmer uIShimmer = lipstickLayer.f40697e;
                        int iUIShimmer_getColor = uIShimmer != null ? (UIMakeupJNI.UIShimmer_getColor(uIShimmer.f40413a, uIShimmer) >> 16) & 255 : 0;
                        UIShimmer uIShimmer2 = lipstickLayer.f40697e;
                        int iUIShimmer_getColor2 = uIShimmer2 != null ? (UIMakeupJNI.UIShimmer_getColor(uIShimmer2.f40413a, uIShimmer2) >> 8) & 255 : 0;
                        UIShimmer uIShimmer3 = lipstickLayer.f40697e;
                        int iUIShimmer_getColor3 = uIShimmer3 != null ? UIMakeupJNI.UIShimmer_getColor(uIShimmer3.f40413a, uIShimmer3) & 255 : 0;
                        UIShimmer uIShimmer4 = lipstickLayer.f40697e;
                        int iUIShimmer_getIntensity = uIShimmer4 != null ? UIMakeupJNI.UIShimmer_getIntensity(uIShimmer4.f40413a, uIShimmer4) : 0;
                        UIShimmer uIShimmer5 = lipstickLayer.f40697e;
                        int iUIShimmer_getGranularity = uIShimmer5 != null ? UIMakeupJNI.UIShimmer_getGranularity(uIShimmer5.f40413a, uIShimmer5) : 0;
                        UIShimmer uIShimmer6 = lipstickLayer.f40697e;
                        lipStickProfileArr[i9] = new CLMakeupLiveLipStickFilter.LipStickProfile(blendMode2, iRed, iGreen, iBlue, i10, i12, i13, i11, i14, i15, i16, iUIShimmer_getColor, iUIShimmer_getColor2, iUIShimmer_getColor3, iUIShimmer_getIntensity, iUIShimmer_getGranularity, uIShimmer6 != null ? UIMakeupJNI.UIShimmer_getDensity(uIShimmer6.f40413a, uIShimmer6) : 0);
                        this.x = lipstickPayload.g;
                        this.y = lipstickPayload.f40703h;
                        this.p[i2] = lipStickProfileArr;
                    }
                    i9++;
                    list = list;
                    i7 = 1;
                    i8 = 0;
                }
                LipstickShape lipstickShape = lipstickPayload.f40705j;
                if (lipstickShape != null) {
                    boolean z = this.q;
                    int i17 = lipstickStyle.f40773b;
                    int i18 = lipstickStyle.f40774c;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 1;
                    options.inJustDecodeBounds = false;
                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(lipstickShape.f40706a, options);
                    Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(lipstickShape.f40707b, options);
                    Bitmap bitmapDecodeFile3 = BitmapFactory.decodeFile(lipstickShape.f40708c, options);
                    BitmapFactory.decodeFile(lipstickShape.d, options);
                    int width = bitmapDecodeFile.getWidth();
                    int height = bitmapDecodeFile.getHeight();
                    int i19 = width * height;
                    int[] iArr = new int[i19];
                    byte[] bArr = new byte[i19];
                    bitmapDecodeFile.getPixels(iArr, 0, width, 0, 0, width, height);
                    for (int i20 = 0; i20 < i19; i20++) {
                        bArr[i20] = (byte) Color.red(iArr[i20]);
                    }
                    byte[] bArrQ = q(bitmapDecodeFile2);
                    byte[] bArrQ2 = q(bitmapDecodeFile3);
                    String str2 = lipstickShape.f40709e;
                    if (TextUtils.isEmpty(str2) || !str2.contains(",")) {
                        i3 = 0;
                        i4 = 0;
                    } else {
                        String[] strArrSplit = str2.split(",");
                        if (strArrSplit.length == 2) {
                            try {
                                i5 = Integer.parseInt(strArrSplit[0].trim());
                                try {
                                    i4 = Integer.parseInt(strArrSplit[1].trim());
                                    i3 = i5;
                                } catch (NumberFormatException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    i3 = i5;
                                    i4 = 0;
                                }
                            } catch (NumberFormatException e3) {
                                e = e3;
                                i5 = 0;
                            }
                        } else {
                            i3 = 0;
                        }
                        i4 = 0;
                    }
                    byte[] bArr2 = new byte[bitmapDecodeFile.getHeight() * bitmapDecodeFile.getWidth()];
                    BaseVenus baseVenus = ApplyEffectCtrl.this.f40488h;
                    UIMakeupJNI.CUIMakeupLive_PreprocessLipShapeForOmbre(baseVenus.f40398a, baseVenus, bArr2, bArr, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), i3, i4, z, i17, i18);
                    int i21 = i3;
                    int i22 = i4;
                    CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
                    int width2 = bitmapDecodeFile.getWidth();
                    int height2 = bitmapDecodeFile.getHeight();
                    cLMakeupLiveFilter.getClass();
                    synchronized (cLMakeupLiveFilter.x5) {
                        try {
                            cLMakeupLiveFilter.J5 = bArr;
                            cLMakeupLiveFilter.K5 = bArrQ;
                            cLMakeupLiveFilter.L5 = bArrQ2;
                            cLMakeupLiveFilter.M5 = bArr2;
                            cLMakeupLiveFilter.N5 = width2;
                            cLMakeupLiveFilter.O5 = height2;
                            for (int i23 = 0; i23 < 3; i23++) {
                                CLMakeupLiveLipStickFilter cLMakeupLiveLipStickFilter = cLMakeupLiveFilter.N[i23];
                                int i24 = cLMakeupLiveFilter.y5;
                                int i25 = cLMakeupLiveFilter.z5;
                                int i26 = cLMakeupLiveFilter.A5;
                                int i27 = cLMakeupLiveFilter.B5;
                                cLMakeupLiveLipStickFilter.getClass();
                                cLMakeupLiveLipStickFilter.y9 = width2 > 0 && height2 > 0;
                                cLMakeupLiveLipStickFilter.h6 = i24;
                                cLMakeupLiveLipStickFilter.i6 = i25;
                                cLMakeupLiveLipStickFilter.j6 = i26;
                                cLMakeupLiveLipStickFilter.k6 = i27;
                                cLMakeupLiveLipStickFilter.l6 = i21;
                                cLMakeupLiveLipStickFilter.m6 = i22;
                                cLMakeupLiveLipStickFilter.n6 = width2;
                                cLMakeupLiveLipStickFilter.o6 = height2;
                                ab abVar = cLMakeupLiveFilter.O[i23];
                                int i28 = cLMakeupLiveFilter.y5;
                                int i29 = cLMakeupLiveFilter.z5;
                                int i30 = cLMakeupLiveFilter.A5;
                                int i31 = cLMakeupLiveFilter.B5;
                                abVar.getClass();
                                abVar.z9 = width2 > 0 && height2 > 0;
                                abVar.h6 = i28;
                                abVar.i6 = i29;
                                abVar.j6 = i30;
                                abVar.k6 = i31;
                                abVar.l6 = i21;
                                abVar.m6 = i22;
                                abVar.n6 = width2;
                                abVar.o6 = height2;
                            }
                            cLMakeupLiveFilter.C5 = true;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    ApplyEffectCtrl.this.f40485c.l(new LipShapeParameters(true, lipstickShape.f40714k, lipstickShape.f40713j, lipstickShape.f40712i, lipstickShape.f40710f, lipstickShape.g, lipstickShape.f40711h), i2);
                } else {
                    liveMakeupCtrlInterface = ApplyEffectCtrl.this.f40485c;
                    lipShapeParameters = new LipShapeParameters();
                }
                this.l.J0();
            }
            int i32 = 0;
            while (i32 < this.o) {
                YMKPrimitiveData.MakeupColor makeupColor2 = (immutableList.isEmpty() || immutableList.size() <= i32) ? new YMKPrimitiveData.MakeupColor(0) : (YMKPrimitiveData.MakeupColor) immutableList.get(i32);
                int iRed2 = Color.red(makeupColor2.d);
                int iGreen2 = Color.green(makeupColor2.d);
                int iBlue2 = Color.blue(makeupColor2.d);
                YMKPrimitiveData.MakeupColor.ExtraData extraData2 = makeupColor2.g;
                CLMakeupLiveLipStickFilter.LipStickProfile lipStickProfile = new CLMakeupLiveLipStickFilter.LipStickProfile(iRed2, iGreen2, iBlue2, extraData2.f40793a, extraData2.f40794b);
                lipStickProfileArr[i32] = lipStickProfile;
                lipStickProfile.ratio = lipstickStyle.f40773b;
                lipStickProfile.feather_strength = lipstickStyle.f40774c;
                i32++;
            }
            switch (AnonymousClass4.d[YMKPrimitiveData.LipstickType.a(str).ordinal()]) {
                case 1:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.THICK;
                    break;
                case 2:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.GLOSS;
                    break;
                case 3:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.HIGH_GLOSS;
                    break;
                case 4:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.WET_PEARLIZED;
                    break;
                case 5:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.METALLIC;
                    break;
                case 6:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.HOLOGRAPHIC;
                    break;
                default:
                    blendMode = CLMakeupLiveLipStickFilter.BlendMode.BRIGHT;
                    break;
            }
            this.n = blendMode;
            this.p[i2] = lipStickProfileArr;
            this.u = lipstickPayload.f40699b;
            this.v = lipstickPayload.f40700c;
            this.w = lipstickPayload.d;
            this.x = lipstickPayload.g;
            this.y = lipstickPayload.f40703h;
            liveMakeupCtrlInterface = ApplyEffectCtrl.this.f40485c;
            lipShapeParameters = new LipShapeParameters();
            liveMakeupCtrlInterface.l(lipShapeParameters, i2);
            this.l.J0();
        }
    }

    public static abstract class ListConfiguration implements Configuration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f40541a;

        public ListConfiguration(Collection collection) {
            this.f40541a = ImmutableList.u(collection);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public void b() {
            Iterator<E> it = this.f40541a.iterator();
            while (it.hasNext()) {
                ((Configuration) it.next()).b();
            }
        }
    }

    public final class LookConfiguration extends ListConfiguration {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final YMKPrimitiveData.Look f40542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LiveSettingCtrl f40543c;

        public LookConfiguration(ApplyEffectCtrl applyEffectCtrl, ConfigurationBuilder configurationBuilder) {
            List list = ApplyEffectCtrl.G;
            boolean z = configurationBuilder.d;
            CacheBuilder cacheBuilderB = CacheBuilder.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            anonymousClass1.f40494c = applyEffectCtrl;
            anonymousClass1.f40492a = z;
            anonymousClass1.f40493b = configurationBuilder;
            LoadingCache loadingCacheA = cacheBuilderB.a(anonymousClass1);
            ApplyEffectCtrl applyEffectCtrl2 = configurationBuilder.f40506a;
            LiveSettingCtrl liveSettingCtrl = applyEffectCtrl2.f40489i;
            List<YMKPrimitiveData.Look> list2 = configurationBuilder.f40507b;
            if (z) {
                YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) list2.get(0);
                ApplyEffectCtrl.d(liveSettingCtrl, loadingCacheA, ApplyEffectCtrl.f(Collections2.a(ApplyEffectCtrl.c(liveSettingCtrl, look.a()), applyEffectCtrl.f40484b), liveSettingCtrl), look.f40784e, 0, configurationBuilder.f40509e, configurationBuilder.f40510f, look.f40781a);
            } else {
                int i2 = 0;
                for (YMKPrimitiveData.Look look2 : list2) {
                    ApplyEffectCtrl.d(liveSettingCtrl, loadingCacheA, ApplyEffectCtrl.f(Collections2.a(ApplyEffectCtrl.c(liveSettingCtrl, look2.a()), applyEffectCtrl.f40484b), liveSettingCtrl), look2.f40784e, i2, configurationBuilder.f40509e, configurationBuilder.f40510f, look2.f40781a);
                    i2++;
                }
            }
            LinkedBlockingDeque linkedBlockingDeque = new LinkedBlockingDeque();
            LinkedBlockingDeque linkedBlockingDeque2 = new LinkedBlockingDeque(applyEffectCtrl.f40483a);
            MoreFutures.b(Observable.fromIterable(loadingCacheA.h().entrySet()).flatMap(new p3(linkedBlockingDeque, linkedBlockingDeque2, 2)).toList().k());
            linkedBlockingDeque2.remove(BeautyMode.SKIN_SMOOTHER);
            linkedBlockingDeque2.removeAll(ApplyEffectCtrl.G);
            ArrayList arrayList = new ArrayList();
            Iterator it = linkedBlockingDeque2.iterator();
            while (it.hasNext()) {
                arrayList.add(applyEffectCtrl.h((BeautyMode) it.next()));
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                linkedBlockingDeque.addFirst((Configuration) it2.next());
            }
            super(linkedBlockingDeque);
            Objects.requireNonNull(list2);
            this.f40542b = (YMKPrimitiveData.Look) list2.get(0);
            this.f40543c = applyEffectCtrl2.f40489i;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final YMKPrimitiveData.Look a() {
            return this.f40542b;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.ListConfiguration, com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final void b() {
            YMKPrimitiveData.Look look = this.f40542b;
            YMKPrimitiveData.SourceType sourceType = look.f40785f;
            LiveSettingCtrl liveSettingCtrl = this.f40543c;
            liveSettingCtrl.getClass();
            String str = look.f40781a;
            liveSettingCtrl.getClass();
            super.b();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final boolean isValid() {
            ImmutableList immutableList = this.f40541a;
            Iterator<E> it = immutableList.iterator();
            while (it.hasNext()) {
                if (!((Configuration) it.next()).isValid()) {
                    return false;
                }
            }
            return !immutableList.isEmpty();
        }
    }

    public final class NecklaceConfiguration extends FeatureConfiguration {
        public NecklaceObject3dModel n;

        /* JADX WARN: Illegal instructions before constructor call */
        public NecklaceConfiguration(ConfigurationBuilder configurationBuilder) {
            BeautyMode beautyMode = BeautyMode.NECKLACE;
            super(ApplyEffectCtrl.this, beautyMode, configurationBuilder, new CLMakeupLiveFilter.MakeupLiveFeatures[0]);
            this.n = null;
            ApplyEffectCtrl.this.f40489i.a(beautyMode);
            ApplyEffectCtrl.this.f40487f.SetEnabled(false);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            if (applyEffectCtrl.f40487f == null) {
                Log.d("ApplyEffectCtrl", "no necklace filter.");
                return;
            }
            if (this.n == null) {
                Log.d("ApplyEffectCtrl", "no necklaceObject3dModel.");
                return;
            }
            this.l = PerformanceCounter.f39180b.a();
            NecklaceFilter necklaceFilter = applyEffectCtrl.f40487f;
            NecklaceObject3dModel necklaceObject3dModel = this.n;
            necklaceFilter.SetNecklaceModels(necklaceObject3dModel.necklace_models, necklaceObject3dModel.necklace_texture_maps, necklaceObject3dModel.necklace_occluder, necklaceObject3dModel.necklace_HDR_texture_map);
            f(new i7(applyEffectCtrl, 1));
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) throws Exception {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            NecklaceFilter necklaceFilter = applyEffectCtrl.f40487f;
            AccessoryCamWrapper accessoryCamWrapper = applyEffectCtrl.g;
            if (necklaceFilter == null || accessoryCamWrapper == null) {
                Log.g(3, "ApplyEffectCtrl", "no necklace filter.");
                return;
            }
            this.l = PerformanceCounter.f39180b.a();
            this.n = (NecklaceObject3dModel) accessoryCamWrapper.loadObject(((YMKPrimitiveData.Mask) this.f40528b.f(configurationBuilder.f(i2).f40571a).get(0)).E, IO.d(new File(accessoryCamWrapper.getNecklaceVersion() <= 2000 ? applyEffectCtrl.l : applyEffectCtrl.m).getParent()));
            this.l.close();
        }
    }

    public static final class Object3dLoader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BaseVenus f40544a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40545b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f40546c;
        public final ArrayList d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f40547e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final HashMap f40548f = new HashMap();
        public final HashMap g = new HashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MutableInteger f40549h = new MutableInteger();

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class DataType {
            public static final DataType AMBIENT;
            public static final DataType DIFFUSE;
            public static final DataType ENVIRONMENT;
            public static final DataType NORMAL_MAP;
            public static final DataType ORM;
            public static final DataType SPECULAR;
            public static final DataType TRANS;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final /* synthetic */ DataType[] f40550a;

            static {
                DataType dataType = new DataType("AMBIENT", 0);
                AMBIENT = dataType;
                DataType dataType2 = new DataType("DIFFUSE", 1);
                DIFFUSE = dataType2;
                DataType dataType3 = new DataType("SPECULAR", 2);
                SPECULAR = dataType3;
                DataType dataType4 = new DataType("NORMAL_MAP", 3);
                NORMAL_MAP = dataType4;
                DataType dataType5 = new DataType("ENVIRONMENT", 4);
                ENVIRONMENT = dataType5;
                DataType dataType6 = new DataType("ORM", 5);
                ORM = dataType6;
                DataType dataType7 = new DataType("TRANS", 6);
                TRANS = dataType7;
                f40550a = new DataType[]{dataType, dataType2, dataType3, dataType4, dataType5, dataType6, dataType7};
            }

            public static DataType valueOf(String str) {
                return (DataType) Enum.valueOf(DataType.class, str);
            }

            public static DataType[] values() {
                return (DataType[]) f40550a.clone();
            }
        }

        public Object3dLoader(BaseVenus baseVenus, String str, Object obj) {
            this.f40545b = str;
            this.f40544a = baseVenus;
            this.f40546c = obj;
        }

        public static void a(BaseVenus baseVenus, String str, ArrayList arrayList, HashMap map) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                CLShare3DRelatedClasses.LiveObject3DMaterialData liveObject3DMaterialData = ((CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(i2)).environment_data;
                if (!liveObject3DMaterialData.texture_image.isEmpty() && liveObject3DMaterialData.texture_image.endsWith("hdr")) {
                    StringBuilder sbU = n00.u(str, "/");
                    sbU.append(liveObject3DMaterialData.texture_image);
                    String string = sbU.toString();
                    if (((CLShare3DRelatedClasses.Live3DHDRTextureData) map.get(string)) == null) {
                        CLShare3DRelatedClasses.Live3DHDRTextureData live3DHDRTextureData = new CLShare3DRelatedClasses.Live3DHDRTextureData();
                        UIMakeupJNI.CUIMakeupLive_LoadObject3DHDR(baseVenus.f40398a, baseVenus, string, live3DHDRTextureData);
                        map.put(liveObject3DMaterialData.texture_image, live3DHDRTextureData);
                    }
                }
            }
        }

        public static void b(DataType dataType, String str, CLShare3DRelatedClasses.LiveObject3DMaterialData liveObject3DMaterialData, Map map, HashMap map2) {
            String[] list;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = false;
            if (liveObject3DMaterialData.texture_image.isEmpty() || liveObject3DMaterialData.texture_image.endsWith(".hdr")) {
                return;
            }
            StringBuilder sbU = n00.u(str, "/");
            sbU.append(liveObject3DMaterialData.texture_image);
            String string = sbU.toString();
            if (!new File(string).exists() && (list = new File(str).list(new k7(liveObject3DMaterialData, 0))) != null && list.length > 0) {
                StringBuilder sbU2 = n00.u(str, "/");
                sbU2.append(list[0]);
                string = sbU2.toString();
                StringBuilder sb = new StringBuilder("loadMaterialData path name case not matched!, obb: ");
                sb.append(liveObject3DMaterialData.texture_image);
                sb.append(", real file:");
                defpackage.a.A(sb, list[0], 5, "ApplyEffectCtrl");
            }
            if (((Bitmap) map.get(liveObject3DMaterialData.texture_image)) == null) {
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(string, options);
                if (bitmapDecodeFile == null) {
                    liveObject3DMaterialData.texture_image = "";
                    return;
                }
                map.put(liveObject3DMaterialData.texture_image, bitmapDecodeFile);
                if (dataType == DataType.ORM) {
                    map2.put(string, 0);
                }
            }
        }

        public static void c(String str, ArrayList arrayList, HashMap map) {
            HashMap map2 = new HashMap();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                CLShare3DRelatedClasses.LiveObject3DModel liveObject3DModel = (CLShare3DRelatedClasses.LiveObject3DModel) arrayList.get(i2);
                b(DataType.AMBIENT, str, liveObject3DModel.ambient_data, map, map2);
                b(DataType.DIFFUSE, str, liveObject3DModel.diffuse_data, map, map2);
                b(DataType.SPECULAR, str, liveObject3DModel.specular_data, map, map2);
                b(DataType.NORMAL_MAP, str, liveObject3DModel.normal_map_data, map, map2);
                b(DataType.ENVIRONMENT, str, liveObject3DModel.environment_data, map, map2);
                b(DataType.ORM, str, liveObject3DModel.orm_data, map, map2);
            }
        }

        public final void d(String str, ArrayList arrayList, boolean z, MutableInteger mutableInteger) {
            boolean zCUIMakeupLive_LoadObject3DModel;
            synchronized (this.f40546c) {
                ReentrantReadWriteLock.ReadLock readLock = ApplyEffectCtrl.K;
                readLock.lock();
                try {
                    BaseVenus baseVenus = this.f40544a;
                    zCUIMakeupLive_LoadObject3DModel = UIMakeupJNI.CUIMakeupLive_LoadObject3DModel(baseVenus.f40398a, baseVenus, str, arrayList, z, mutableInteger);
                    readLock.unlock();
                } catch (Throwable th) {
                    ApplyEffectCtrl.K.unlock();
                    throw th;
                }
            }
            if (zCUIMakeupLive_LoadObject3DModel) {
                return;
            }
            md.k("Load occluder file failed.");
        }
    }

    @FunctionalInterface
    public interface PayloadCreator {
        Object a(PayloadCreatorParameters payloadCreatorParameters);
    }

    public final class Real3DEyewearConfiguration extends FeatureConfiguration {
        public final Object3dLoader n;
        public volatile Real3DEyewearPayload o;

        public Real3DEyewearConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.REAL_3D_EYEWEAR, configurationBuilder, new CLMakeupLiveFilter.MakeupLiveFeatures[0]);
            this.n = new Object3dLoader(ApplyEffectCtrl.this.f40488h, ApplyEffectCtrl.this.f40490j, ApplyEffectCtrl.this.E);
            f(new i7(ApplyEffectCtrl.this, 0));
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void k() {
            ApplyEffectCtrl.this.g();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            List list3 = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            Object3dLoader object3dLoader = this.n;
            ArrayList arrayList = object3dLoader.d;
            HashMap map = object3dLoader.f40548f;
            ArrayList arrayList2 = object3dLoader.f40547e;
            CLMakeupLive3DFilter.Object3DEyewearGlassInfo object3DEyewearGlassInfo = this.o.f40755b;
            CLMakeupLive3DFilter.Object3DEyewearSetting object3DEyewearSetting = this.o.f40754a;
            Object3dLoader object3dLoader2 = this.n;
            cLMakeupLiveFilter.W(arrayList, map, arrayList2, object3DEyewearGlassInfo, object3DEyewearSetting, object3dLoader2.f40549h.value, object3dLoader2.g);
            this.l.J0();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) throws Exception {
            List list = ApplyEffectCtrl.G;
            this.l = PerformanceCounter.f39180b.a();
            List listF = this.f40528b.f(configurationBuilder.f(i2).f40571a);
            Object3dLoader object3dLoader = this.n;
            String str = ((YMKPrimitiveData.Mask) listF.get(0)).E;
            String str2 = ((YMKPrimitiveData.Mask) listF.get(0)).H;
            String str3 = object3dLoader.f40545b;
            ArrayList arrayList = object3dLoader.f40547e;
            ArrayList arrayList2 = object3dLoader.d;
            File file = new File(str);
            if (!file.exists()) {
                az.w(file.getAbsolutePath(), "obb file not exist. path=");
                return;
            }
            object3dLoader.d(str, arrayList2, false, object3dLoader.f40549h);
            if (!arrayList2.isEmpty()) {
                Object3dLoader.c(file.getParent(), arrayList2, object3dLoader.f40548f);
                if (!TextUtils.isEmpty(str2) && new File(str2).exists()) {
                    object3dLoader.d(str2, arrayList, true, new MutableInteger());
                } else {
                    if (!new File(str3).exists()) {
                        md.n(fc.i("default occluder file doesn't exist defaultOccluderPath=", str3, ", customOccluderPath=", str2));
                        return;
                    }
                    object3dLoader.d(str3, arrayList, true, new MutableInteger());
                }
                Object3dLoader.a(object3dLoader.f40544a, file.getParent(), arrayList2, object3dLoader.g);
            }
            Object obj = configurationBuilder.f(i2).f40576h;
            Objects.requireNonNull(obj);
            this.o = (Real3DEyewearPayload) obj;
            this.o.a();
            this.l.close();
        }
    }

    public final class ReshapeConfiguration extends FeatureConfiguration {
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            final int iIntValue = 0;
            Integer num = (Integer) configurationBuilder.f(0).f40576h;
            BeautyMode beautyMode = this.f40529c;
            if (num == null || num.intValue() == -1000 || num.intValue() < -100 || ((num.intValue() < 0 && (beautyMode == BeautyMode.FACE_CHEEKBONE || beautyMode == BeautyMode.FACE_JAW)) || num.intValue() > 100)) {
                Log.d("ApplyEffectCtrl", "invalid reshape. BeautyMode=" + beautyMode + ", intensity=" + num);
            } else {
                iIntValue = num.intValue();
            }
            f(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.ReshapeConfiguration.1
                @Override // java.lang.Runnable
                public void run() {
                    ReshapeConfiguration reshapeConfiguration = ReshapeConfiguration.this;
                    LiveSettingCtrl liveSettingCtrl = reshapeConfiguration.f40528b;
                    liveSettingCtrl.f40748i.put(reshapeConfiguration.f40529c, Integer.valueOf(iIntValue));
                }
            });
        }
    }

    public static final class Setting {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f40571a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f40572b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f40573c;
        public ImmutableList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f40574e = -1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f40575f = -1;
        public int g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f40576h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f40577i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f40578j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ArrayList f40579k;

        public final String toString() {
            StringBuilder sb = new StringBuilder("Setting [patternId='");
            sb.append(this.f40571a);
            sb.append("', paletteId='");
            sb.append(this.f40572b);
            sb.append("', colors=");
            sb.append(this.d);
            sb.append(", lookVersion=");
            sb.append(this.f40574e);
            sb.append(", hiddenIntensity=");
            sb.append(this.f40575f);
            sb.append(", sizeIntensity=");
            return tr.k(sb, this.g, ']');
        }
    }

    public final class SkinSmoothConfiguration extends FeatureConfiguration {
        public int n;

        public SkinSmoothConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.SKIN_SMOOTHER, configurationBuilder, new CLMakeupLiveFilter.MakeupLiveFeatures[0]);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration, com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.Configuration
        public final boolean isValid() {
            return true;
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            ApplyEffectCtrl applyEffectCtrl = ApplyEffectCtrl.this;
            applyEffectCtrl.f40485c.a(this.n);
            if (list.isEmpty()) {
                final boolean z = false;
                for (final int i2 = 0; i2 < 3; i2++) {
                    if (applyEffectCtrl.f40485c.f()) {
                        AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.t
                            @Override // java.lang.Runnable
                            public final void run() {
                                ApplyEffectCtrl.this.f40485c.n(i2, z);
                            }
                        });
                    } else {
                        applyEffectCtrl.f40485c.n(i2, false);
                    }
                }
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final int iIntValue = ((Integer) it.next()).intValue();
                final boolean z2 = true;
                if (applyEffectCtrl.f40485c.f()) {
                    AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.perfectcorp.perfectlib.makeupcam.camera.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            ApplyEffectCtrl.this.f40485c.n(iIntValue, z2);
                        }
                    });
                } else {
                    applyEffectCtrl.f40485c.n(iIntValue, true);
                }
            }
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            Integer num = (Integer) configurationBuilder.f(i2).f40576h;
            this.n = (num == null || num.intValue() <= 0 || num.intValue() > 100) ? 0 : num.intValue();
        }
    }

    @FunctionalInterface
    public interface SkuIdGetter {

        public static final class Ids {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f40580a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f40581b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f40582c;
            public final ItemSubType d;

            public Ids(String str, String str2, String str3, ItemSubType itemSubType) {
                Objects.requireNonNull(str, "skuGuid can't be null");
                this.f40580a = str;
                Objects.requireNonNull(str2, "skuItemGuid can't be null");
                this.f40581b = str2;
                Objects.requireNonNull(str3, "subPaletteGuid can't be null");
                this.f40582c = str3;
                Objects.requireNonNull(itemSubType, "itemSubType can't be null");
                this.d = itemSubType;
            }
        }

        Ids a(YMKPrimitiveData.Effect effect);
    }

    public final class TeethWhitenConfiguration extends FeatureConfiguration {
        public int n;

        public TeethWhitenConfiguration(ConfigurationBuilder configurationBuilder) {
            super(ApplyEffectCtrl.this, BeautyMode.TEETH_WHITENER, configurationBuilder, CLMakeupLiveFilter.MakeupLiveFeatures.TEETH_WHITEN);
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void m(List list, List list2) {
            CLMakeupLiveFilter cLMakeupLiveFilter = ApplyEffectCtrl.this.f40486e;
            float f2 = this.n;
            for (int i2 = 0; i2 < 3; i2++) {
                CLMakeupLiveTeethWhitenFilter cLMakeupLiveTeethWhitenFilter = cLMakeupLiveFilter.Q[i2];
                cLMakeupLiveTeethWhitenFilter.getClass();
                if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= 100.0f) {
                    cLMakeupLiveTeethWhitenFilter.O = 0.01f * f2;
                }
                cLMakeupLiveTeethWhitenFilter.setFloat(cLMakeupLiveTeethWhitenFilter.A, cLMakeupLiveTeethWhitenFilter.O);
            }
            cLMakeupLiveFilter.getClass();
        }

        @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.FeatureConfiguration
        public final void o(ConfigurationBuilder configurationBuilder, int i2) {
            Integer num = (Integer) configurationBuilder.f(0).f40576h;
            if (num == null || num.intValue() <= 0 || num.intValue() > 100) {
                this.n = 0;
            } else {
                this.n = num.intValue();
            }
        }
    }

    static {
        Float fValueOf = Float.valueOf(1.0f);
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.h(BeautyMode.FACE_RESHAPE, BeautyMode.FACE_RESHAPE_LEFT, BeautyMode.FACE_RESHAPE_RIGHT, BeautyMode.CHIN_RESHAPE, BeautyMode.CHIN_RESHAPE_LEFT, BeautyMode.CHIN_RESHAPE_RIGHT, BeautyMode.CHIN_LENGTH, BeautyMode.FACE_WIDTH, BeautyMode.FACE_CHEEKBONE, BeautyMode.FACE_JAW, BeautyMode.NOSE_SIZE, BeautyMode.NOSE_LENGTH, BeautyMode.NOSE_BRIDGE, BeautyMode.NOSE_TIP, BeautyMode.NOSE_WING, BeautyMode.NOSE_WIDTH, BeautyMode.EYE_SIZE, BeautyMode.EYE_SIZE_LEFT, BeautyMode.EYE_SIZE_RIGHT, BeautyMode.EYE_WIDTH, BeautyMode.EYE_HEIGHT, BeautyMode.EYE_DISTANCE, BeautyMode.EYE_SLANT, BeautyMode.LIP_SIZE, BeautyMode.LIP_WIDTH, BeautyMode.LIP_HEIGHT, BeautyMode.LIP_HEIGHT_UPPER, BeautyMode.LIP_HEIGHT_LOWER, BeautyMode.LIP_PEAK);
        ImmutableList immutableListI = builder.i();
        G = immutableListI;
        int i2 = ImmutableSet.d;
        ImmutableSet.Builder builder2 = new ImmutableSet.Builder();
        if (ModuleConfig.q) {
            BeautyMode beautyMode = BeautyMode.SKIN_SMOOTHER;
            builder2.h(beautyMode);
            builder2.i(Arrays.asList(BeautyMode.EYE_SHADOW, BeautyMode.EYE_LINES, BeautyMode.EYE_LASHES, BeautyMode.LIP_STICK, BeautyMode.BLUSH, BeautyMode.SKIN_TONER, BeautyMode.EYE_CONTACT, BeautyMode.EYE_BROW, BeautyMode.FACE_ART, BeautyMode.FACE_ART_LAYER_2, BeautyMode.FACE_CONTOUR, BeautyMode.LIP_LINER, BeautyMode.BRONZER, BeautyMode.CONCEALER));
            builder2.h(BeautyMode.HAIR_DYE);
            builder2.h(beautyMode);
            builder2.h(BeautyMode.TEETH_WHITENER);
            builder2.i(immutableListI);
            builder2.h(BeautyMode.CUBE_EYEWEAR);
            builder2.h(BeautyMode.REAL_3D_EYEWEAR);
            builder2.h(BeautyMode.EARRINGS);
            builder2.h(BeautyMode.BACKGROUND);
        }
        if (ModuleConfig.y) {
            builder2.h(BeautyMode.NECKLACE);
        }
        ImmutableSet immutableSetJ = builder2.j();
        H = immutableSetJ;
        I = immutableSetJ;
        J = ImmutableSet.A(BeautyMode.REAL_3D_EYEWEAR);
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(true);
        K = reentrantReadWriteLock.readLock();
        L = reentrantReadWriteLock.writeLock();
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(Math.max(1, Runtime.getRuntime().availableProcessors() - 1), NamedThreadFactory.c("LOOK_EFFECT_PREPARE_EXECUTOR"));
        M = executorServiceNewFixedThreadPool;
        N = Schedulers.a(executorServiceNewFixedThreadPool);
        O = Range.c(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), fValueOf);
        P = Range.c(Float.valueOf(-1.0f), fValueOf);
    }

    public ApplyEffectCtrl(LiveMakeupCtrlInterface liveMakeupCtrlInterface, int i2, Set<BeautyMode> set, ApplyEffectParams applyEffectParams) {
        Object obj = new Object();
        this.E = obj;
        this.F = obj;
        this.f40485c = liveMakeupCtrlInterface;
        this.d = i2;
        ImmutableSet immutableSetT = ImmutableSet.t(set);
        this.f40483a = immutableSetT;
        this.f40484b = Predicates.b(Predicates.a(Predicates.d(immutableSetT), new f7(this, 0)), new g7(0));
        this.f40486e = liveMakeupCtrlInterface.getFilter();
        this.f40487f = liveMakeupCtrlInterface.i();
        this.g = liveMakeupCtrlInterface.j();
        this.f40488h = liveMakeupCtrlInterface.o();
        this.f40489i = liveMakeupCtrlInterface.g();
        this.f40490j = Strings.b(applyEffectParams.f40064a);
        this.f40491k = Strings.b(applyEffectParams.f40065b);
        this.l = Strings.b(applyEffectParams.f40066c);
        this.m = Strings.b(applyEffectParams.d);
        this.n = Strings.b(applyEffectParams.f40067e);
        this.o = Strings.b(applyEffectParams.f40068f);
        this.p = applyEffectParams.g;
        this.q = applyEffectParams.f40069h;
        this.r = applyEffectParams.f40070i;
        this.s = applyEffectParams.f40071j;
        this.t = applyEffectParams.f40072k;
        this.u = applyEffectParams.m;
        this.v = applyEffectParams.n;
        this.w = applyEffectParams.o;
        this.x = applyEffectParams.p;
        this.y = applyEffectParams.q;
        this.z = applyEffectParams.r;
        this.A = applyEffectParams.s;
    }

    public static /* synthetic */ Pair a(String str, String str2) {
        Point point = new Point();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ALPHA_8;
        Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), str, options);
        point.set(bitmapA.getWidth(), bitmapA.getHeight());
        Bitmap bitmapExtractAlpha = bitmapA.extractAlpha();
        ImageUtils.b(bitmapA);
        byte[] bArrB = EyeModel.b(bitmapExtractAlpha);
        ImageUtils.b(bitmapExtractAlpha);
        Bitmap bitmapA2 = BitmapUtils.a(PfCommons.b(), str2, options);
        if (point.x != bitmapA2.getWidth() || point.y != bitmapA2.getHeight()) {
            md.n("The blush image size is mismatched");
            return null;
        }
        Bitmap bitmapExtractAlpha2 = bitmapA2.extractAlpha();
        ImageUtils.b(bitmapA2);
        byte[][] bArr = {bArrB, EyeModel.b(bitmapExtractAlpha2)};
        ImageUtils.b(bitmapExtractAlpha2);
        return Pair.create(point, bArr);
    }

    public static EyeShadowLinerModel b(LiveSettingCtrl liveSettingCtrl, EyeShadowLinerPayload eyeShadowLinerPayload) {
        YMKPrimitiveData.Mask mask;
        Bitmap bitmapC;
        EyeShadowLinerModel eyeShadowLinerModel = new EyeShadowLinerModel();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Log.g(3, "ApplyEffectCtrl", "payload.setting : " + eyeShadowLinerPayload.f40613a);
        List<EyeShadowLinerPayload.Setting> list = eyeShadowLinerPayload.f40613a;
        for (EyeShadowLinerPayload.Setting setting : list) {
            String str = setting.f40615a;
            int i2 = setting.f40618e;
            List listF = liveSettingCtrl.f(str);
            if (list.size() == 1 && listF.size() == 2) {
                Iterator it = listF.iterator();
                while (it.hasNext()) {
                    Bitmap bitmapC2 = EyeModel.c(PfCommons.b(), (YMKPrimitiveData.Mask) it.next());
                    if (bitmapC2 != null) {
                        Bitmap bitmapExtractAlpha = bitmapC2.extractAlpha();
                        ImageUtils.b(bitmapC2);
                        byte[] bArrB = EyeModel.b(bitmapExtractAlpha);
                        arrayList.add(bArrB);
                        arrayList2.add(bArrB);
                    }
                }
                break;
            }
            if (i2 < listF.size() && (bitmapC = EyeModel.c(PfCommons.b(), (mask = (YMKPrimitiveData.Mask) listF.get(i2)))) != null) {
                Bitmap bitmapExtractAlpha2 = bitmapC.extractAlpha();
                ImageUtils.b(bitmapC);
                byte[] bArrB2 = EyeModel.b(bitmapExtractAlpha2);
                YMKPrimitiveData.Mask.EyeShadowSide eyeShadowSide = mask.f40810k;
                if (eyeShadowSide == YMKPrimitiveData.Mask.EyeShadowSide.LEFT) {
                    arrayList.add(bArrB2);
                } else if (eyeShadowSide == YMKPrimitiveData.Mask.EyeShadowSide.RIGHT) {
                    arrayList2.add(bArrB2);
                } else {
                    arrayList.add(bArrB2);
                    arrayList2.add(bArrB2);
                }
                eyeShadowLinerModel.f40526c = true;
            }
        }
        eyeShadowLinerModel.f40524a = new byte[arrayList.size()][];
        for (byte b2 = 0; b2 < arrayList.size(); b2 = (byte) (b2 + 1)) {
            eyeShadowLinerModel.f40524a[b2] = (byte[]) arrayList.get(b2);
        }
        eyeShadowLinerModel.f40525b = new byte[arrayList2.size()][];
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            eyeShadowLinerModel.f40525b[i3] = (byte[]) arrayList2.get(i3);
        }
        return eyeShadowLinerModel;
    }

    public static ArrayList c(LiveSettingCtrl liveSettingCtrl, List list) {
        int i2;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) it.next();
            if (effect.f40758b == BeautyMode.EYE_WEAR) {
                YMKPrimitiveData.Pattern patternI = liveSettingCtrl.i(effect.f40759c);
                if (patternI != null && (i2 = AnonymousClass4.f40496b[patternI.g.ordinal()]) != 1) {
                    if (i2 == 2) {
                        arrayList.add(new YMKPrimitiveData.Effect(effect, BeautyMode.REAL_3D_EYEWEAR));
                    }
                }
            }
            arrayList.add(effect);
        }
        return arrayList;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0096. Please report as an issue. */
    public static void d(LiveSettingCtrl liveSettingCtrl, LoadingCache loadingCache, ArrayList arrayList, float f2, int i2, PayloadCreator payloadCreator, SkuIdGetter skuIdGetter, String str) {
        int i3;
        ConfigurationBuilder configurationBuilderK;
        int i4;
        ConfigurationBuilder configurationBuilder;
        int i5;
        char c2;
        ItemSubType itemSubType;
        FaceContourPayload.Setting setting;
        int iC;
        LiveSettingCtrl liveSettingCtrl2 = liveSettingCtrl;
        SkuIdGetter skuIdGetter2 = skuIdGetter;
        EnumMap enumMap = new EnumMap(BeautyMode.class);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) it.next();
            List arrayList2 = (List) enumMap.get(effect.f40758b);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                enumMap.put(effect.f40758b, arrayList2);
            }
            arrayList2.add(effect);
        }
        ArrayList arrayList3 = new ArrayList();
        List list = (List) enumMap.get(BeautyMode.FACE_ART);
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((YMKPrimitiveData.Effect) it2.next()).f40759c);
            }
        }
        Iterator it3 = enumMap.keySet().iterator();
        while (it3.hasNext()) {
            BeautyMode beautyMode = (BeautyMode) it3.next();
            try {
                List<YMKPrimitiveData.Effect> list2 = (List) enumMap.get(beautyMode);
                PayloadCreatorParameters.Builder builder = new PayloadCreatorParameters.Builder();
                if (!MoreCollections.a(list2)) {
                    int i6 = AnonymousClass4.f40495a[beautyMode.ordinal()];
                    if (i6 == 1 || i6 == 2) {
                        enumMap = enumMap;
                        it3 = it3;
                        i3 = i2;
                        configurationBuilderK = k(liveSettingCtrl, loadingCache, i3, skuIdGetter, str, list2, builder);
                    } else {
                        if (i6 != 5) {
                            boolean z = false;
                            if (i6 != 12) {
                                ConfigurationBuilder configurationBuilder2 = null;
                                switch (i6) {
                                    case 15:
                                        enumMap = enumMap;
                                        it3 = it3;
                                        i5 = i2;
                                        builder.b(((YMKPrimitiveData.Effect) list2.get(0)).f());
                                        configurationBuilderK = configurationBuilder2;
                                        i3 = i5;
                                        break;
                                    case 16:
                                        enumMap = enumMap;
                                        it3 = it3;
                                        i5 = i2;
                                        builder.f40560a = ((YMKPrimitiveData.Effect) list2.get(0)).b();
                                        builder.f40563e = ((YMKPrimitiveData.Effect) list2.get(0)).h();
                                        builder.g = ((YMKPrimitiveData.Effect) list2.get(0)).i();
                                        ArrayList arrayList4 = new ArrayList();
                                        ArrayList arrayList5 = new ArrayList();
                                        List<YMKPrimitiveData.MakeupColor> listA = ((YMKPrimitiveData.Effect) list2.get(0)).a();
                                        for (YMKPrimitiveData.MakeupColor makeupColor : listA) {
                                            arrayList4.add(Integer.valueOf(makeupColor.f40791e));
                                            arrayList5.add(Integer.valueOf(makeupColor.g.g));
                                        }
                                        ArrayList arrayList6 = new ArrayList();
                                        if (list2.size() == 1) {
                                            List listG = liveSettingCtrl2.g(((YMKPrimitiveData.Effect) list2.get(0)).h());
                                            if (!MoreCollections.a(listA) && !MoreCollections.a(listG) && listA.size() == listG.size()) {
                                                if (listA.size() == 1) {
                                                    YMKPrimitiveData.MakeupColor makeupColorA = HairDyeSettingHelper.a((YMKPrimitiveData.MakeupColor) listA.get(0), ((YMKPrimitiveData.MakeupColor) listG.get(0)).f());
                                                    listA.clear();
                                                    listA.add(makeupColorA);
                                                } else {
                                                    listA = HairDyeSettingHelper.b(listG, listA);
                                                }
                                            }
                                            arrayList6.add(((YMKPrimitiveData.Effect) list2.get(0)).h());
                                        } else {
                                            ArrayList arrayList7 = new ArrayList();
                                            for (int i7 = 0; i7 < list2.size(); i7++) {
                                                String strH = ((YMKPrimitiveData.Effect) list2.get(i7)).h();
                                                List listG2 = liveSettingCtrl2.g(strH);
                                                if (!MoreCollections.a(listG2)) {
                                                    arrayList7.addAll(listG2);
                                                }
                                                arrayList6.add(strH);
                                            }
                                            listA = HairDyeSettingHelper.b(arrayList7, listA);
                                        }
                                        builder.w(arrayList6);
                                        builder.j(arrayList4);
                                        try {
                                            builder.z = ImmutableList.u(arrayList5);
                                            float fD = ((YMKPrimitiveData.Effect) list2.get(0)).c().d();
                                            if (-1000.0f != fD) {
                                                builder.v(fD);
                                            }
                                            float fC = ((YMKPrimitiveData.Effect) list2.get(0)).c().c();
                                            if (P.apply(Float.valueOf(fC))) {
                                                builder.u(fC);
                                            }
                                            builder.k(((YMKPrimitiveData.Effect) list2.get(0)).c().b());
                                            YMKPrimitiveData.Pattern patternI = liveSettingCtrl2.i(((YMKPrimitiveData.Effect) list2.get(0)).i());
                                            builder.C = patternI == null ? YMKPrimitiveData.HairDyePatternType.ONE_COLOR : patternI.a();
                                            configurationBuilder2 = (ConfigurationBuilder) loadingCache.a(((YMKPrimitiveData.Effect) list2.get(0)).b());
                                            configurationBuilder2.f(i5).f40571a = ((YMKPrimitiveData.Effect) list2.get(0)).i();
                                            configurationBuilder2.f(i5).f40572b = ((YMKPrimitiveData.Effect) list2.get(0)).h();
                                            configurationBuilder2.d(i5, listA);
                                            try {
                                                configurationBuilder2.g(f2, i5);
                                                String strE = ((YMKPrimitiveData.Effect) list2.get(0)).c().e();
                                                if (!TextUtils.isEmpty(strE)) {
                                                    configurationBuilder2.f(i5).f40573c = strE;
                                                }
                                                configurationBuilderK = configurationBuilder2;
                                                i3 = i5;
                                            } catch (Throwable th) {
                                                th = th;
                                                Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                                liveSettingCtrl2 = liveSettingCtrl;
                                                skuIdGetter2 = skuIdGetter;
                                                enumMap = enumMap;
                                                it3 = it3;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                            liveSettingCtrl2 = liveSettingCtrl;
                                            skuIdGetter2 = skuIdGetter;
                                            enumMap = enumMap;
                                            it3 = it3;
                                        }
                                        break;
                                    case 17:
                                    case 18:
                                        i4 = i2;
                                        SkuIdGetter.Ids idsA = skuIdGetter2.a((YMKPrimitiveData.Effect) list2.get(0));
                                        builder.f40560a = ((YMKPrimitiveData.Effect) list2.get(0)).b();
                                        builder.g = ((YMKPrimitiveData.Effect) list2.get(0)).i();
                                        builder.f40563e = ((YMKPrimitiveData.Effect) list2.get(0)).h();
                                        builder.x(((YMKPrimitiveData.Effect) list2.get(0)).k());
                                        builder.z(idsA.f40580a);
                                        builder.A(idsA.f40581b);
                                        configurationBuilder = (ConfigurationBuilder) loadingCache.a(((YMKPrimitiveData.Effect) list2.get(0)).b());
                                        configurationBuilder.f(i4).f40571a = ((YMKPrimitiveData.Effect) list2.get(0)).i();
                                        configurationBuilder.f(i4).f40572b = ((YMKPrimitiveData.Effect) list2.get(0)).h();
                                        configurationBuilder.f(i4).f40577i = idsA.f40580a;
                                        configurationBuilder.f(i4).f40578j = idsA.f40581b;
                                        break;
                                    default:
                                        try {
                                            for (YMKPrimitiveData.Effect effect2 : list2) {
                                                BeautyMode beautyMode2 = effect2.f40758b;
                                                SkuIdGetter.Ids idsA2 = skuIdGetter2.a(effect2);
                                                PayloadCreatorParameters.Builder builder2 = builder;
                                                i5 = i2;
                                                try {
                                                    ConfigurationBuilder configurationBuilderJ = j(loadingCache, f2, i5, str, builder2, effect2, idsA2);
                                                    builder = builder2;
                                                    int i8 = AnonymousClass4.f40495a[beautyMode2.ordinal()];
                                                    if (i8 != 4) {
                                                        if (i8 != 11) {
                                                            if (i8 == 7) {
                                                                List listG3 = liveSettingCtrl2.g(effect2.h());
                                                                if (!MoreCollections.a(listG3) && !MoreCollections.a(effect2.a())) {
                                                                    YMKPrimitiveData.MakeupColor makeupColor2 = (YMKPrimitiveData.MakeupColor) effect2.a().get(0);
                                                                    YMKPrimitiveData.MakeupColor makeupColor3 = (YMKPrimitiveData.MakeupColor) listG3.get(0);
                                                                    YMKPrimitiveData.MakeupColor.ExtraData extraData = makeupColor3.g;
                                                                    int i9 = extraData.f40799i;
                                                                    if (i9 != -1000 || extraData.f40801k != -1000) {
                                                                        builder.n(i9);
                                                                        builder.C(makeupColor3.g.f40801k);
                                                                        int iB = makeupColor2.b();
                                                                        int i10 = makeupColor2.f40791e;
                                                                        String strJ = makeupColor2.j();
                                                                        int iH = makeupColor2.h();
                                                                        int iG = makeupColor2.g();
                                                                        boolean zN = makeupColor2.n();
                                                                        int iL = makeupColor2.l();
                                                                        int[] iArrE = makeupColor2.e();
                                                                        int i11 = makeupColor2.g.g;
                                                                        int i12 = makeupColor3.g.f40799i;
                                                                        int iD = makeupColor3.d();
                                                                        int i13 = makeupColor3.g.f40801k;
                                                                        int i14 = makeupColor2.i();
                                                                        int iK = makeupColor2.k();
                                                                        YMKPrimitiveData.MakeupColor.ExtraData extraData2 = makeupColor2.g;
                                                                        int i15 = extraData2.o;
                                                                        int i16 = i15 == -1 ? 0 : i15;
                                                                        int i17 = extraData2.p;
                                                                        int i18 = i17 == -1 ? 0 : i17;
                                                                        int i19 = extraData2.q;
                                                                        configurationBuilderJ.e(Collections.singletonList(new YMKPrimitiveData.MakeupColor(iB, i10, strJ, iH, iG, zN, iL, iArrE, i11, null, i12, iD, i13, 0, 0, i14, iK, i16, i18, i19 == -1 ? 0 : i19, makeupColor2.m())));
                                                                    }
                                                                }
                                                            } else if (i8 == 8) {
                                                                try {
                                                                    YMKPrimitiveData.Mask mask = (YMKPrimitiveData.Mask) liveSettingCtrl2.f(effect2.i()).get(0);
                                                                    builder.c(effect2.e().f40972e != -1000 ? effect2.e().f40972e : mask.b());
                                                                    builder.i(effect2.e().f40973f != -1000 ? effect2.e().f40973f : mask.h());
                                                                    builder.f(effect2.e().g != -1000 ? effect2.e().g : mask.e());
                                                                    builder.g(effect2.e().f40974h != -1000 ? effect2.e().f40974h : mask.f());
                                                                    if (effect2.e().d != -1) {
                                                                        iC = effect2.e().d;
                                                                    } else {
                                                                        iC = effect2.f40760e.f40970b;
                                                                        if (iC == -1) {
                                                                            iC = mask.c();
                                                                        }
                                                                    }
                                                                    builder.d(iC);
                                                                    builder.e(effect2.e().f40975i != -1000 ? effect2.e().f40975i : mask.d());
                                                                    builder.h(effect2.e().f40976j != -1000 ? effect2.e().f40976j : mask.g());
                                                                } catch (Throwable th3) {
                                                                    th = th3;
                                                                    enumMap = enumMap;
                                                                    it3 = it3;
                                                                    Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                                                    liveSettingCtrl2 = liveSettingCtrl;
                                                                    skuIdGetter2 = skuIdGetter;
                                                                    enumMap = enumMap;
                                                                    it3 = it3;
                                                                }
                                                            }
                                                            enumMap = enumMap;
                                                            it3 = it3;
                                                            c2 = 2;
                                                        } else {
                                                            List listF = liveSettingCtrl2.f(effect2.f40759c);
                                                            try {
                                                                int i20 = effect2.g.l;
                                                                YMKPrimitiveData.Mask.Position positionI = i20 != -1 ? ((YMKPrimitiveData.Mask) listF.get(i20)).i() : YMKPrimitiveData.Mask.Position.NONE;
                                                                List listG4 = liveSettingCtrl2.g(effect2.h());
                                                                String str2 = idsA2.f40582c;
                                                                YMKPrimitiveData.Mask.Position position = positionI;
                                                                ItemSubType itemSubType2 = idsA2.d;
                                                                enumMap = enumMap;
                                                                try {
                                                                    ItemSubType itemSubType3 = ItemSubType.CONTOUR;
                                                                    if (itemSubType2 != itemSubType3) {
                                                                        itemSubType = itemSubType3;
                                                                        try {
                                                                            if (itemSubType2 != ItemSubType.HIGHLIGHT && itemSubType2 != ItemSubType.HIGHLIGHT_CONTOUR) {
                                                                                itemSubType2 = ItemSubType.NONE;
                                                                            }
                                                                        } catch (Throwable th4) {
                                                                            th = th4;
                                                                            it3 = it3;
                                                                            Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                                                            liveSettingCtrl2 = liveSettingCtrl;
                                                                            skuIdGetter2 = skuIdGetter;
                                                                            enumMap = enumMap;
                                                                            it3 = it3;
                                                                        }
                                                                    } else {
                                                                        itemSubType = itemSubType3;
                                                                    }
                                                                    int i21 = AnonymousClass4.f40497c[position.ordinal()];
                                                                    it3 = it3;
                                                                    if (i21 != 1) {
                                                                        c2 = 2;
                                                                        if (i21 != 2) {
                                                                            try {
                                                                                if (itemSubType2 == ItemSubType.NONE) {
                                                                                    itemSubType2 = ItemSubType.HIGHLIGHT_CONTOUR;
                                                                                }
                                                                                ItemSubType itemSubType4 = itemSubType2;
                                                                                builder.u = new FaceContourPayload.Setting(effect2.c().e(), idsA2.f40580a, effect2.i(), effect2.h(), str2, effect2.a(), itemSubType4, effect2.j() < 0 ? 0 : effect2.j(), effect2.g() < 0 ? 0 : effect2.g());
                                                                                setting = new FaceContourPayload.Setting(effect2.c().e(), idsA2.f40580a, effect2.i(), effect2.h(), str2, effect2.a(), itemSubType4, effect2.j() < 0 ? 1 : effect2.j(), effect2.g() < 0 ? 1 : effect2.g());
                                                                            } catch (Throwable th5) {
                                                                                th = th5;
                                                                                Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                                                                liveSettingCtrl2 = liveSettingCtrl;
                                                                                skuIdGetter2 = skuIdGetter;
                                                                                enumMap = enumMap;
                                                                                it3 = it3;
                                                                            }
                                                                        } else {
                                                                            ItemSubType itemSubType5 = itemSubType2 == ItemSubType.NONE ? itemSubType : itemSubType2;
                                                                            listG4.set(effect2.g(), (YMKPrimitiveData.MakeupColor) effect2.a().get(list2.indexOf(effect2)));
                                                                            setting = new FaceContourPayload.Setting(effect2.c().e(), idsA2.f40580a, effect2.i(), effect2.h(), str2, listG4, itemSubType5, effect2.j(), effect2.g());
                                                                        }
                                                                        builder.v = setting;
                                                                    } else {
                                                                        c2 = 2;
                                                                        if (itemSubType2 == ItemSubType.NONE) {
                                                                            itemSubType2 = ItemSubType.HIGHLIGHT;
                                                                        }
                                                                        listG4.set(effect2.g(), (YMKPrimitiveData.MakeupColor) effect2.a().get(list2.indexOf(effect2)));
                                                                        builder.u = new FaceContourPayload.Setting(effect2.c().e(), idsA2.f40580a, effect2.i(), effect2.h(), str2, listG4, itemSubType2, effect2.j(), effect2.g());
                                                                    }
                                                                    builder.m(effect2.d());
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    it3 = it3;
                                                                    Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                                                    liveSettingCtrl2 = liveSettingCtrl;
                                                                    skuIdGetter2 = skuIdGetter;
                                                                    enumMap = enumMap;
                                                                    it3 = it3;
                                                                }
                                                            } catch (Throwable th7) {
                                                                th = th7;
                                                                enumMap = enumMap;
                                                            }
                                                        }
                                                        break;
                                                    } else {
                                                        enumMap = enumMap;
                                                        it3 = it3;
                                                        c2 = 2;
                                                        if (!TextUtils.isEmpty(effect2.c().P)) {
                                                            builder.l(effect2.d);
                                                            builder.y(effect2.c().P);
                                                        }
                                                    }
                                                    configurationBuilder2 = configurationBuilderJ;
                                                    enumMap = enumMap;
                                                    it3 = it3;
                                                    z = false;
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    enumMap = enumMap;
                                                    it3 = it3;
                                                    Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                                    liveSettingCtrl2 = liveSettingCtrl;
                                                    skuIdGetter2 = skuIdGetter;
                                                    enumMap = enumMap;
                                                    it3 = it3;
                                                }
                                                break;
                                            }
                                            enumMap = enumMap;
                                            it3 = it3;
                                            configurationBuilderK = configurationBuilder2;
                                        } catch (Throwable th9) {
                                            th = th9;
                                            i5 = i2;
                                        }
                                        break;
                                }
                                liveSettingCtrl2 = liveSettingCtrl;
                                skuIdGetter2 = skuIdGetter;
                                enumMap = enumMap;
                                it3 = it3;
                            } else {
                                i4 = i2;
                                YMKPrimitiveData.Effect effect3 = (YMKPrimitiveData.Effect) list2.get(0);
                                SkuIdGetter.Ids idsA3 = skuIdGetter2.a(effect3);
                                YMKPrimitiveData.Pattern patternI2 = liveSettingCtrl2.i(effect3.i());
                                LipLinerPayload.Setting setting2 = new LipLinerPayload.Setting(effect3.i(), effect3.h(), idsA3.f40582c, effect3.g(), effect3.j(), effect3.a());
                                builder.f40560a = effect3.b();
                                builder.B(effect3.c().e());
                                builder.f40563e = effect3.h();
                                builder.g = effect3.i();
                                List listG5 = effect3.c().g();
                                builder.r((MoreCollections.a(listG5) || !"lip_liner_texture_satin".equalsIgnoreCase((String) listG5.get(0))) ? VN_Lipliner_Type.LIPLINER_THICK : VN_Lipliner_Type.LIPLINER_BRIGHT);
                                builder.q(effect3.c().h());
                                builder.p(effect3.c().f());
                                builder.t(patternI2.d());
                                builder.s(patternI2.c());
                                builder.o(patternI2.b());
                                List listSingletonList = Collections.singletonList(setting2);
                                Preconditions.f(!listSingletonList.isEmpty());
                                builder.M = ImmutableList.u(listSingletonList);
                                configurationBuilder = (ConfigurationBuilder) loadingCache.a(effect3.b());
                                configurationBuilder.f(i4).f40571a = effect3.i();
                                configurationBuilder.f(i4).f40572b = effect3.h();
                                configurationBuilder.d(i4, effect3.a());
                                configurationBuilder.f(i4).f40577i = idsA3.f40580a;
                                configurationBuilder.f(i4).f40578j = idsA3.f40581b;
                            }
                            i3 = i4;
                            configurationBuilderK = configurationBuilder;
                        } else {
                            enumMap = enumMap;
                            it3 = it3;
                            try {
                                configurationBuilderK = i(liveSettingCtrl2, loadingCache, i2, skuIdGetter2, str, list2, builder);
                            } catch (Throwable th10) {
                                th = th10;
                                Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                                liveSettingCtrl2 = liveSettingCtrl;
                                skuIdGetter2 = skuIdGetter;
                                enumMap = enumMap;
                                it3 = it3;
                            }
                        }
                        i3 = i2;
                    }
                    if (configurationBuilderK != null) {
                        try {
                            try {
                                configurationBuilderK.f(i3).f40576h = payloadCreator.a(builder.a());
                                if (beautyMode == BeautyMode.FACE_ART && !MoreCollections.a(arrayList3)) {
                                    configurationBuilderK.j(i3, arrayList3);
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            Log.e("ApplyEffectCtrl", "generateBuilders::mode=" + beautyMode, th);
                            liveSettingCtrl2 = liveSettingCtrl;
                            skuIdGetter2 = skuIdGetter;
                            enumMap = enumMap;
                            it3 = it3;
                        }
                    }
                    liveSettingCtrl2 = liveSettingCtrl;
                    skuIdGetter2 = skuIdGetter;
                    enumMap = enumMap;
                    it3 = it3;
                }
            } catch (Throwable th13) {
                th = th13;
            }
        }
    }

    public static ArrayList f(Iterable iterable, LiveSettingCtrl liveSettingCtrl) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (true) {
            com.perfectcorp.thirdparty.com.google.common.collect.b bVar = (com.perfectcorp.thirdparty.com.google.common.collect.b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) bVar.next();
            if (effect.f40758b == BeautyMode.FACE_ART) {
                YMKPrimitiveData.Pattern patternI = liveSettingCtrl.i(effect.f40759c);
                if (patternI != null) {
                    if (patternI.f40828h == YMKPrimitiveData.FaceArtLayer2.YES) {
                        arrayList.add(new YMKPrimitiveData.Effect(effect, BeautyMode.FACE_ART_LAYER_2));
                    }
                }
            }
            arrayList.add(effect);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x012b  */
    /* JADX WARN: Code duplicated, block: B:35:0x0136  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.ArrayList, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$ConfigurationBuilder] */
    public static ConfigurationBuilder i(LiveSettingCtrl liveSettingCtrl, LoadingCache loadingCache, int i2, SkuIdGetter skuIdGetter, String str, List list, PayloadCreatorParameters.Builder builder) {
        ?? arrayList;
        int i3;
        int i4;
        SkuIdGetter.Ids idsA = skuIdGetter.a((YMKPrimitiveData.Effect) list.get(0));
        builder.f40560a = ((YMKPrimitiveData.Effect) list.get(0)).f40758b;
        builder.f40561b = ((YMKPrimitiveData.Effect) list.get(0)).g.n;
        builder.f40563e = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
        builder.g = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
        ArrayList arrayList2 = new ArrayList();
        if (list.size() == 1 && ((YMKPrimitiveData.Effect) list.get(0)).g.m == -1) {
            arrayList = ((YMKPrimitiveData.Effect) list.get(0)).d;
            TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.BLUSH), (List) arrayList);
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                arrayList2.add(new BlushPayload.Setting(((YMKPrimitiveData.Effect) list.get(0)).f40759c, ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a, idsA.f40582c, i5, i5, arrayList));
            }
        } else {
            arrayList = new ArrayList();
            for (int i6 = 0; i6 < list.size(); i6++) {
                YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) list.get(i6);
                List list2 = effect.d;
                EffectInfo.Extras extras = effect.g;
                ArrayList arrayList3 = new ArrayList();
                String str2 = extras.f40951a;
                int i7 = extras.m;
                Iterator it = liveSettingCtrl.g(str2).iterator();
                while (it.hasNext()) {
                    arrayList3.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) it.next()));
                }
                if (arrayList3.isEmpty()) {
                    arrayList3.addAll(arrayList);
                }
                if (i7 != -1 && i7 < arrayList3.size() && i6 < list2.size()) {
                    ((YMKPrimitiveData.MakeupColor) arrayList3.get(i7)).f40791e = ((YMKPrimitiveData.MakeupColor) list2.get(i6)).f40791e;
                    arrayList.add((YMKPrimitiveData.MakeupColor) arrayList3.get(i7));
                    String str3 = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
                    String str4 = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
                    String str5 = idsA.f40582c;
                    i3 = extras.l;
                    if (i3 != -1) {
                        i4 = i3;
                    } else {
                        i4 = i6;
                    }
                    arrayList2.add(new BlushPayload.Setting(str3, str4, str5, i7, i4, arrayList3));
                    TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.BLUSH), arrayList);
                } else if (i6 < arrayList3.size() && i6 < list2.size()) {
                    i7 = i6;
                    ((YMKPrimitiveData.MakeupColor) arrayList3.get(i7)).f40791e = ((YMKPrimitiveData.MakeupColor) list2.get(i6)).f40791e;
                    arrayList.add((YMKPrimitiveData.MakeupColor) arrayList3.get(i7));
                    String str6 = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
                    String str7 = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
                    String str8 = idsA.f40582c;
                    i3 = extras.l;
                    if (i3 != -1) {
                        i4 = i3;
                    } else {
                        i4 = i6;
                    }
                    arrayList2.add(new BlushPayload.Setting(str6, str7, str8, i7, i4, arrayList3));
                    TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.BLUSH), arrayList);
                }
            }
        }
        builder.F = ImmutableList.u(arrayList2);
        ?? r2 = (ConfigurationBuilder) loadingCache.a(((YMKPrimitiveData.Effect) list.get(0)).f40758b);
        r2.f(i2).f40571a = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
        r2.f(i2).f40572b = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
        r2.d(i2, arrayList);
        r2.f(i2).f40577i = idsA.f40580a;
        r2.f(i2).f40573c = l(((YMKPrimitiveData.Effect) list.get(0)).g.n, str);
        r2.f(i2).f40578j = idsA.f40581b;
        return r2;
    }

    public static ConfigurationBuilder j(LoadingCache loadingCache, float f2, int i2, String str, PayloadCreatorParameters.Builder builder, YMKPrimitiveData.Effect effect, SkuIdGetter.Ids ids) {
        BeautyMode beautyMode = effect.f40758b;
        builder.f40560a = beautyMode;
        EffectInfo.Extras extras = effect.g;
        builder.f40561b = extras.n;
        String str2 = extras.f40951a;
        builder.f40563e = str2;
        builder.f40564f = effect.f40761f;
        String str3 = effect.f40759c;
        builder.g = str3;
        builder.f40565h = extras.d;
        builder.f40567j = extras.f40954e;
        builder.f40568k = extras.f40955f;
        ConfigurationBuilder configurationBuilder = (ConfigurationBuilder) loadingCache.a(beautyMode);
        configurationBuilder.f(i2).f40571a = str3;
        configurationBuilder.f(i2).f40572b = str2;
        configurationBuilder.f(i2).f40573c = l(extras.n, str);
        configurationBuilder.d(i2, effect.d);
        configurationBuilder.f(i2).f40574e = f2;
        EffectInfo.Intensities intensities = effect.f40760e;
        configurationBuilder.f(i2).f40575f = intensities.f40970b;
        configurationBuilder.f(i2).g = intensities.f40971c;
        configurationBuilder.f(i2).f40577i = ids.f40580a;
        configurationBuilder.f(i2).f40578j = ids.f40581b;
        return configurationBuilder;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0124  */
    /* JADX WARN: Code duplicated, block: B:35:0x012f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.ArrayList, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$ConfigurationBuilder] */
    public static ConfigurationBuilder k(LiveSettingCtrl liveSettingCtrl, LoadingCache loadingCache, int i2, SkuIdGetter skuIdGetter, String str, List list, PayloadCreatorParameters.Builder builder) {
        ?? arrayList;
        int i3;
        int i4;
        SkuIdGetter.Ids idsA = skuIdGetter.a((YMKPrimitiveData.Effect) list.get(0));
        builder.f40560a = ((YMKPrimitiveData.Effect) list.get(0)).f40758b;
        builder.f40561b = ((YMKPrimitiveData.Effect) list.get(0)).g.n;
        builder.f40563e = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
        builder.g = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
        ArrayList arrayList2 = new ArrayList();
        if (list.size() == 1 && ((YMKPrimitiveData.Effect) list.get(0)).g.m == -1) {
            arrayList = ((YMKPrimitiveData.Effect) list.get(0)).d;
            TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.EYE_SHADOW), (List) arrayList);
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                arrayList2.add(new EyeShadowLinerPayload.Setting(((YMKPrimitiveData.Effect) list.get(0)).f40759c, ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a, idsA.f40582c, i5, i5, arrayList));
            }
        } else {
            arrayList = new ArrayList();
            for (int i6 = 0; i6 < list.size(); i6++) {
                YMKPrimitiveData.Effect effect = (YMKPrimitiveData.Effect) list.get(i6);
                List list2 = effect.d;
                EffectInfo.Extras extras = effect.g;
                ArrayList arrayList3 = new ArrayList();
                String str2 = extras.f40951a;
                int i7 = extras.m;
                Iterator it = liveSettingCtrl.g(str2).iterator();
                while (it.hasNext()) {
                    arrayList3.add(new YMKPrimitiveData.MakeupColor((YMKPrimitiveData.MakeupColor) it.next()));
                }
                if (arrayList3.isEmpty()) {
                    arrayList3.addAll(arrayList);
                }
                if (i7 != -1 && i7 < arrayList3.size() && i6 < list2.size()) {
                    arrayList3.set(i7, (YMKPrimitiveData.MakeupColor) list2.get(i6));
                    arrayList.add((YMKPrimitiveData.MakeupColor) list2.get(i6));
                    String str3 = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
                    String str4 = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
                    String str5 = idsA.f40582c;
                    i3 = extras.l;
                    if (i3 != -1) {
                        i4 = i3;
                    } else {
                        i4 = i6;
                    }
                    arrayList2.add(new EyeShadowLinerPayload.Setting(str3, str4, str5, i7, i4, arrayList3));
                    TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.EYE_SHADOW), arrayList);
                } else if (i6 < arrayList3.size() && i6 < list2.size()) {
                    i7 = i6;
                    arrayList3.set(i7, (YMKPrimitiveData.MakeupColor) list2.get(i6));
                    arrayList.add((YMKPrimitiveData.MakeupColor) list2.get(i6));
                    String str6 = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
                    String str7 = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
                    String str8 = idsA.f40582c;
                    i3 = extras.l;
                    if (i3 != -1) {
                        i4 = i3;
                    } else {
                        i4 = i6;
                    }
                    arrayList2.add(new EyeShadowLinerPayload.Setting(str6, str7, str8, i7, i4, arrayList3));
                    TemplateWorkarounds.a(LiveSettingCtrl.c(BeautyMode.EYE_SHADOW), arrayList);
                }
            }
        }
        builder.E = ImmutableList.u(arrayList2);
        ?? r2 = (ConfigurationBuilder) loadingCache.a(((YMKPrimitiveData.Effect) list.get(0)).f40758b);
        r2.f(i2).f40571a = ((YMKPrimitiveData.Effect) list.get(0)).f40759c;
        r2.f(i2).f40572b = ((YMKPrimitiveData.Effect) list.get(0)).g.f40951a;
        r2.d(i2, arrayList);
        r2.f(i2).f40577i = idsA.f40580a;
        r2.f(i2).f40573c = l(((YMKPrimitiveData.Effect) list.get(0)).g.n, str);
        r2.f(i2).f40578j = idsA.f40581b;
        return r2;
    }

    public static String l(String str, String str2) {
        return TextUtils.isEmpty(str) ? "" : fc.h(str, "_lk_", str2);
    }

    public final boolean e(BeautyMode beautyMode) {
        if (this.t && beautyMode == BeautyMode.SKIN_TONER) {
            return true;
        }
        if (this.p && beautyMode == BeautyMode.FACE_RESHAPE) {
            return true;
        }
        if (this.q && beautyMode == BeautyMode.EYE_SIZE) {
            return true;
        }
        if (this.r) {
            switch (AnonymousClass4.f40495a[beautyMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                    return true;
            }
        }
        if (this.s && beautyMode == BeautyMode.HAIR_DYE) {
            return true;
        }
        if (this.u && ((ImmutableList) G).contains(beautyMode)) {
            return true;
        }
        if (this.v && beautyMode == BeautyMode.CUBE_EYEWEAR) {
            return true;
        }
        if (this.w && beautyMode == BeautyMode.REAL_3D_EYEWEAR) {
            return true;
        }
        if (this.x && beautyMode == BeautyMode.EARRINGS) {
            return true;
        }
        if (this.y && beautyMode == BeautyMode.BACKGROUND) {
            return true;
        }
        if (this.z && beautyMode == BeautyMode.TEETH_WHITENER) {
            return true;
        }
        return (this.A && beautyMode == BeautyMode.NECKLACE) || beautyMode == BeautyMode.SKIN_SMOOTHER;
    }

    public final void g() {
        BeautyMode beautyMode = BeautyMode.CUBE_EYEWEAR;
        LiveSettingCtrl liveSettingCtrl = this.f40489i;
        liveSettingCtrl.a(beautyMode);
        liveSettingCtrl.a(BeautyMode.REAL_3D_EYEWEAR);
    }

    public final Configuration h(BeautyMode beautyMode) {
        return new ConfigurationBuilder(this, beautyMode).a();
    }

    public static final class ConfigurationBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ApplyEffectCtrl f40506a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f40507b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BeautyMode f40508c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final PayloadCreator f40509e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SkuIdGetter f40510f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final LoadingCache f40511h;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl$ConfigurationBuilder$1, reason: invalid class name */
        class AnonymousClass1 extends CacheLoader<Integer, Setting> {
            @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
            public final Object a(Object obj) {
                return new Setting();
            }
        }

        public ConfigurationBuilder(ApplyEffectCtrl applyEffectCtrl, List<YMKPrimitiveData.Look> list, int i2, PayloadCreator payloadCreator, SkuIdGetter skuIdGetter) {
            this.f40511h = CacheBuilder.b().a(new AnonymousClass1());
            Objects.requireNonNull(applyEffectCtrl);
            this.f40506a = applyEffectCtrl;
            Objects.requireNonNull(list);
            this.f40507b = list;
            this.f40508c = null;
            this.d = new HashSet(Collections2.b(list, new AnonymousClass2())).size() == 1;
            this.f40509e = payloadCreator;
            this.f40510f = skuIdGetter;
        }

        public final Configuration a() {
            BeautyMode beautyMode = this.f40508c;
            if (beautyMode == null) {
                beautyMode = BeautyMode.UNDEFINED;
            }
            int i2 = AnonymousClass4.f40495a[(beautyMode != null ? beautyMode : BeautyMode.UNDEFINED).ordinal()];
            ApplyEffectCtrl applyEffectCtrl = this.f40506a;
            switch (i2) {
                case 1:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new EyeShadowConfiguration(this);
                case 2:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new EyeLinerConfiguration(this);
                case 3:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new EyeLashesConfiguration(this);
                case 4:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new LipStickConfiguration(this);
                case 5:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new BlushConfiguration(this);
                case 6:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new EyeContactConfiguration(this);
                case 7:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new FoundationConfiguration(this);
                case 8:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new EyebrowConfiguration(this);
                case 9:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new FaceArtConfiguration(this);
                case 10:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new FaceArtLayer2Configuration(this);
                case 11:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new FaceContourConfiguration(this);
                case 12:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new LipLinerConfiguration(this);
                case 13:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new BronzerConfiguration(this);
                case 14:
                    Objects.requireNonNull(applyEffectCtrl);
                    return new ConcealerConfiguration(applyEffectCtrl, BeautyMode.CONCEALER, this, CLMakeupLiveFilter.MakeupLiveFeatures.CONCEALER);
                case 15:
                    Objects.requireNonNull(applyEffectCtrl);
                    BackgroundConfiguration backgroundConfiguration = new BackgroundConfiguration();
                    backgroundConfiguration.f40499b = applyEffectCtrl;
                    if (this.g) {
                        backgroundConfiguration.f40498a = null;
                        return backgroundConfiguration;
                    }
                    Object obj = f(0).f40576h;
                    if (obj instanceof BackgroundPayload) {
                        backgroundConfiguration.f40498a = (BackgroundPayload) obj;
                    }
                    return backgroundConfiguration;
                case 16:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new HairDyeConfiguration(this);
                case 17:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new Real3DEyewearConfiguration(this);
                case 18:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new EarringsConfiguration(this);
                case 19:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new TeethWhitenConfiguration(this);
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                case EACTags.DATE_OF_BIRTH /* 43 */:
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                case 46:
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                case 48:
                    Objects.requireNonNull(applyEffectCtrl);
                    return new ReshapeConfiguration(applyEffectCtrl, beautyMode, this, new CLMakeupLiveFilter.MakeupLiveFeatures[0]);
                case 49:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new NecklaceConfiguration(this);
                case 50:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new CubeEyewearConfiguration(this);
                case EACTags.TRANSACTION_DATE /* 51 */:
                    Objects.requireNonNull(applyEffectCtrl);
                    return applyEffectCtrl.new SkinSmoothConfiguration(this);
                default:
                    az.m(beautyMode, "UnsupportedEffect=");
                    return null;
            }
        }

        public final void b(int i2) {
            Object obj;
            BeautyMode beautyMode = this.f40508c;
            Objects.requireNonNull(beautyMode, "beautyMode == null");
            if (beautyMode == BeautyMode.FACE_CONTOUR) {
                obj = f(i2).f40576h;
                if (!(obj instanceof PayloadValidator)) {
                    return;
                }
            } else {
                Objects.requireNonNull(f(i2).f40571a, "patternId == null");
                Objects.requireNonNull(f(i2).f40572b, "paletteId == null");
                Objects.requireNonNull(f(i2).d, "colors == null");
                if (beautyMode != BeautyMode.EYE_SHADOW) {
                    return;
                }
                obj = f(i2).f40576h;
                if (!(obj instanceof PayloadValidator)) {
                    return;
                }
            }
            ((PayloadValidator) obj).a();
        }

        public final Configuration c() {
            List list = this.f40507b;
            ApplyEffectCtrl applyEffectCtrl = this.f40506a;
            if (list != null) {
                Objects.requireNonNull(applyEffectCtrl);
                return new LookConfiguration(applyEffectCtrl, this);
            }
            BeautyMode beautyMode = this.f40508c;
            Objects.requireNonNull(beautyMode);
            if (!applyEffectCtrl.f40483a.contains(beautyMode)) {
                b21.p(beautyMode, "Unsupported effect ");
                return null;
            }
            if (!applyEffectCtrl.e(beautyMode)) {
                throw new UnsupportedOperationException("Unsupported effect " + beautyMode + " since the license doesn't enable the feature");
            }
            Configuration configurationA = a();
            if (configurationA instanceof FeatureConfiguration) {
                FeatureConfiguration featureConfiguration = (FeatureConfiguration) configurationA;
                ArrayList arrayList = featureConfiguration.g;
                if (!featureConfiguration.f40533i) {
                    featureConfiguration.f40533i = true;
                    try {
                        BeautyMode beautyMode2 = featureConfiguration.f40529c;
                        if (beautyMode2 != beautyMode) {
                            throw new FeatureConfiguration.UnsupportedBeautyModeException(beautyMode2, beautyMode);
                        }
                        if (featureConfiguration.f40535k) {
                            featureConfiguration.l(this, 1);
                        } else {
                            if (featureConfiguration.d) {
                                ArrayList arrayList2 = featureConfiguration.l(this, 0) ? arrayList : featureConfiguration.f40532h;
                                for (int i2 = 1; i2 < 3; i2++) {
                                    arrayList2.add(Integer.valueOf(i2));
                                }
                            } else {
                                for (int i3 = 0; i3 < 3; i3++) {
                                    featureConfiguration.l(this, i3);
                                }
                            }
                        }
                        featureConfiguration.n();
                        if (!arrayList.isEmpty()) {
                            featureConfiguration.f40534j = true;
                            return configurationA;
                        }
                    } catch (FeatureConfiguration.UnsupportedBeautyModeException e2) {
                        Log.g(5, "FeatureConfiguration", "doPrepare UnsupportedBeautyModeException::" + e2.getMessage());
                    } catch (Throwable th) {
                        Log.e("FeatureConfiguration", "doPrepare", th);
                    }
                }
            }
            return configurationA;
        }

        public final void d(int i2, Collection collection) {
            f(i2).d = collection == null ? null : ImmutableList.u(collection);
        }

        public final void e(List list) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                d(i2, list);
            }
        }

        public final Setting f(int i2) {
            return (Setting) this.f40511h.a(Integer.valueOf(i2));
        }

        public final void g(float f2, int i2) {
            f(i2).f40574e = f2;
        }

        public final void h(String str) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                f(i2).f40572b = str;
            }
        }

        public final void i(String str) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                f(i2).f40571a = str;
            }
        }

        public final void j(int i2, ArrayList arrayList) {
            f(i2).f40579k = arrayList;
        }

        public final void k(Object obj) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                f(i2).f40576h = obj;
            }
        }

        public final void l(String str) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                f(i2).f40577i = str;
            }
        }

        public final void m(String str) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                f(i2).f40578j = str;
            }
        }

        public final void n(String str) {
            for (int i2 = 0; i2 < this.f40506a.d; i2++) {
                f(i2).f40573c = str;
            }
        }

        public ConfigurationBuilder(ApplyEffectCtrl applyEffectCtrl, BeautyMode beautyMode, boolean z) {
            this.f40511h = CacheBuilder.b().a(new AnonymousClass1());
            Objects.requireNonNull(applyEffectCtrl);
            this.f40506a = applyEffectCtrl;
            this.f40507b = null;
            Objects.requireNonNull(beautyMode);
            this.f40508c = beautyMode;
            this.d = z;
            this.f40509e = null;
            this.f40510f = null;
        }

        public ConfigurationBuilder(ApplyEffectCtrl applyEffectCtrl, BeautyMode beautyMode) {
            this(applyEffectCtrl, beautyMode, true);
        }
    }

    public static class PayloadCreatorParameters {
        public final float A;
        public final YMKPrimitiveData.HairDyePatternType B;
        public final String C;
        public final ImmutableList D;
        public final ImmutableList E;
        public final VN_Lipliner_Type F;
        public final int G;
        public final int H;
        public final int I;
        public final int J;
        public final int K;
        public final ImmutableList L;
        public final int M;
        public final int N;
        public final String O;
        public final int P;
        public final int Q;
        public final YMKPrimitiveData.Effect.Position R;
        public final String S;
        public final List T;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyMode f40551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40552b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40553c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f40554e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f40555f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f40556h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f40557i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f40558j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f40559k;
        public final int l;
        public final int m;
        public final int n;
        public final int o;
        public final int p;
        public final int q;
        public final int r;
        public final int s;
        public final FaceContourPayload.Setting t;
        public final FaceContourPayload.Setting u;
        public final int v;
        public final ImmutableList w;
        public final ImmutableList x;
        public final ImmutableList y;
        public final float z;

        public PayloadCreatorParameters(Builder builder) {
            this.f40551a = builder.f40560a;
            this.f40552b = builder.f40561b;
            this.f40553c = builder.f40562c;
            this.d = builder.d;
            this.f40554e = builder.f40563e;
            this.f40555f = builder.f40564f;
            this.g = builder.g;
            this.f40556h = builder.f40565h;
            this.f40557i = builder.f40567j;
            this.f40558j = builder.f40568k;
            this.f40559k = builder.l;
            this.l = builder.m;
            this.p = builder.q;
            this.o = builder.p;
            this.m = builder.n;
            this.n = builder.o;
            this.q = builder.r;
            this.r = builder.s;
            this.s = builder.t;
            this.t = builder.u;
            this.u = builder.v;
            this.v = builder.w;
            this.w = builder.x;
            this.x = builder.y;
            this.y = builder.z;
            this.z = builder.A;
            this.A = builder.B;
            this.B = builder.C;
            this.C = builder.D;
            this.D = builder.E;
            this.E = builder.F;
            this.F = builder.G;
            this.G = builder.H;
            this.H = builder.I;
            this.I = builder.J;
            this.J = builder.K;
            this.K = builder.L;
            this.L = builder.M;
            this.M = builder.N;
            this.N = builder.O;
            this.O = builder.P;
            this.P = builder.Q;
            this.Q = builder.R;
            this.S = builder.f40566i;
            this.T = builder.T;
            YMKPrimitiveData.Effect.Position position = builder.S;
            this.R = position == null ? YMKPrimitiveData.Effect.Position.UNDEFINED : position;
        }

        public static final class Builder {
            public float A;
            public float B;
            public YMKPrimitiveData.HairDyePatternType C;
            public String D;
            public ImmutableList E;
            public ImmutableList F;
            public VN_Lipliner_Type G;
            public int H;
            public int I;
            public int J;
            public int K;
            public int L;
            public ImmutableList M;
            public int N;
            public int O;
            public String P;
            public int Q;
            public int R;
            public YMKPrimitiveData.Effect.Position S;
            public List T;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public BeautyMode f40560a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f40561b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f40562c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f40563e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f40564f;
            public String g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f40565h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public String f40566i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f40567j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f40568k;
            public int l;
            public int m;
            public int n;
            public int o;
            public int p;
            public int q;
            public int r;
            public int s;
            public int t;
            public FaceContourPayload.Setting u;
            public FaceContourPayload.Setting v;
            public int w;
            public ImmutableList x;
            public ImmutableList y;
            public ImmutableList z;

            public Builder(PayloadCreatorParameters payloadCreatorParameters) {
                this.w = 50;
                this.C = YMKPrimitiveData.HairDyePatternType.NONE;
                this.G = VN_Lipliner_Type.LIPLINER_THICK;
                this.H = -1;
                this.I = -1;
                this.J = -1;
                this.K = -1;
                this.L = -1;
                this.N = -1000;
                this.O = -1000;
                VN_BlushType vN_BlushType = VN_BlushType.VN_BLUSH_MATTE;
                this.f40560a = payloadCreatorParameters.f40551a;
                this.f40561b = payloadCreatorParameters.f40552b;
                this.f40562c = payloadCreatorParameters.f40553c;
                this.d = payloadCreatorParameters.d;
                this.f40563e = payloadCreatorParameters.f40554e;
                this.f40564f = payloadCreatorParameters.f40555f;
                this.g = payloadCreatorParameters.g;
                this.f40565h = payloadCreatorParameters.f40556h;
                this.f40567j = payloadCreatorParameters.f40557i;
                this.f40568k = payloadCreatorParameters.f40558j;
                this.l = payloadCreatorParameters.f40559k;
                this.m = payloadCreatorParameters.l;
                this.n = payloadCreatorParameters.m;
                this.o = payloadCreatorParameters.n;
                this.p = payloadCreatorParameters.o;
                this.q = payloadCreatorParameters.p;
                this.r = payloadCreatorParameters.q;
                this.s = payloadCreatorParameters.r;
                this.t = payloadCreatorParameters.s;
                this.u = payloadCreatorParameters.t;
                this.v = payloadCreatorParameters.u;
                this.w = payloadCreatorParameters.v;
                this.x = payloadCreatorParameters.w;
                this.y = payloadCreatorParameters.x;
                this.z = payloadCreatorParameters.y;
                this.A = payloadCreatorParameters.z;
                this.B = payloadCreatorParameters.A;
                this.C = payloadCreatorParameters.B;
                this.E = payloadCreatorParameters.D;
                this.F = payloadCreatorParameters.E;
                this.G = payloadCreatorParameters.F;
                this.H = payloadCreatorParameters.G;
                this.I = payloadCreatorParameters.H;
                this.J = payloadCreatorParameters.I;
                this.K = payloadCreatorParameters.J;
                this.L = payloadCreatorParameters.K;
                this.M = payloadCreatorParameters.L;
                this.N = payloadCreatorParameters.M;
                this.O = payloadCreatorParameters.N;
                this.P = payloadCreatorParameters.O;
                this.Q = payloadCreatorParameters.P;
                this.R = payloadCreatorParameters.Q;
                this.S = payloadCreatorParameters.R;
                this.T = payloadCreatorParameters.T;
                this.f40566i = payloadCreatorParameters.S;
            }

            public final void A(String str) {
                this.d = str;
            }

            public final void B(String str) {
                this.f40561b = str;
            }

            public final void C(int i2) {
                this.O = i2;
            }

            public final PayloadCreatorParameters a() {
                return new PayloadCreatorParameters(this);
            }

            public final void b(String str) {
                this.P = str;
            }

            public final void c(int i2) {
                this.q = i2;
            }

            public final void d(int i2) {
                this.r = i2;
            }

            public final void e(int i2) {
                this.s = i2;
            }

            public final void f(int i2) {
                this.n = i2;
            }

            public final void g(int i2) {
                this.o = i2;
            }

            public final void h(int i2) {
                this.t = i2;
            }

            public final void i(int i2) {
                this.p = i2;
            }

            public final void j(ArrayList arrayList) {
                this.y = ImmutableList.u(arrayList);
            }

            public final void k(String str) {
                this.D = str;
            }

            public final void l(List list) {
                this.T = list;
            }

            public final void m(int i2) {
                if (i2 < 0 || i2 > 100) {
                    this.w = 50;
                } else {
                    this.w = i2;
                }
            }

            public final void n(int i2) {
                this.N = i2;
            }

            public final void o(int i2) {
                this.L = i2;
            }

            public final void p(int i2) {
                this.I = i2;
            }

            public final void q(int i2) {
                this.H = i2;
            }

            public final void r(VN_Lipliner_Type vN_Lipliner_Type) {
                Objects.requireNonNull(vN_Lipliner_Type);
                this.G = vN_Lipliner_Type;
            }

            public final void s(int i2) {
                this.K = i2;
            }

            public final void t(int i2) {
                this.J = i2;
            }

            public final void u(float f2) {
                this.A = f2;
            }

            public final void v(float f2) {
                this.B = f2;
            }

            public final void w(ArrayList arrayList) {
                this.x = ImmutableList.u(arrayList);
            }

            public final void x(YMKPrimitiveData.Effect.Position position) {
                this.S = position;
            }

            public final void y(String str) {
                this.f40566i = str;
            }

            public final void z(String str) {
                this.f40562c = str;
            }

            public Builder() {
                this.w = 50;
                this.C = YMKPrimitiveData.HairDyePatternType.NONE;
                this.G = VN_Lipliner_Type.LIPLINER_THICK;
                this.H = -1;
                this.I = -1;
                this.J = -1;
                this.K = -1;
                this.L = -1;
                this.N = -1000;
                this.O = -1000;
                VN_BlushType vN_BlushType = VN_BlushType.VN_BLUSH_MATTE;
            }
        }
    }
}
