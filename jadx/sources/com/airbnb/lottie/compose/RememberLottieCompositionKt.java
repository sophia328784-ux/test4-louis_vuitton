package com.airbnb.lottie.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieListener;
import com.airbnb.lottie.LottieTask;
import defpackage.h7;
import defpackage.md;
import defpackage.v40;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;", "result", "lottie-compose_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class RememberLottieCompositionKt {
    /* JADX WARN: Code duplicated, block: B:35:0x00de  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:42:0x0101 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object a(Context context, LottieCompositionSpec lottieCompositionSpec, String str, String str2, String str3, String str4, ContinuationImpl continuationImpl) throws Throwable {
        RememberLottieCompositionKt$lottieComposition$1 rememberLottieCompositionKt$lottieComposition$1;
        String str5;
        String str6;
        String str7;
        Context context2;
        Object objF;
        String str8;
        LottieComposition lottieComposition;
        Context context3;
        String str9;
        Object objF2;
        if (continuationImpl instanceof RememberLottieCompositionKt$lottieComposition$1) {
            rememberLottieCompositionKt$lottieComposition$1 = (RememberLottieCompositionKt$lottieComposition$1) continuationImpl;
            int i2 = rememberLottieCompositionKt$lottieComposition$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                rememberLottieCompositionKt$lottieComposition$1.g = i2 - Integer.MIN_VALUE;
            } else {
                rememberLottieCompositionKt$lottieComposition$1 = new RememberLottieCompositionKt$lottieComposition$1(continuationImpl);
            }
        } else {
            rememberLottieCompositionKt$lottieComposition$1 = new RememberLottieCompositionKt$lottieComposition$1(continuationImpl);
        }
        Object result = rememberLottieCompositionKt$lottieComposition$1.f22043f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = rememberLottieCompositionKt$lottieComposition$1.g;
        if (i3 == 0) {
            ResultKt.b(result);
            LottieTask lottieTaskB = b(context, lottieCompositionSpec, str4);
            rememberLottieCompositionKt$lottieComposition$1.f22040b = context;
            str5 = str;
            rememberLottieCompositionKt$lottieComposition$1.f22041c = str5;
            rememberLottieCompositionKt$lottieComposition$1.d = str2;
            str6 = str3;
            rememberLottieCompositionKt$lottieComposition$1.f22042e = str6;
            rememberLottieCompositionKt$lottieComposition$1.g = 1;
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(rememberLottieCompositionKt$lottieComposition$1), 1);
            cancellableContinuationImpl.initCancellability();
            lottieTaskB.b(new LottieListener() { // from class: com.airbnb.lottie.compose.RememberLottieCompositionKt$await$2$1
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                    if (cancellableContinuationImpl2.isCompleted()) {
                        return;
                    }
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(obj);
                }
            });
            lottieTaskB.a(new LottieListener() { // from class: com.airbnb.lottie.compose.RememberLottieCompositionKt$await$2$2
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    Throwable th = (Throwable) obj;
                    CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                    if (cancellableContinuationImpl2.isCompleted()) {
                        return;
                    }
                    Result.Companion companion = Result.INSTANCE;
                    th.getClass();
                    cancellableContinuationImpl2.resumeWith(new Result.Failure(th));
                }
            });
            result = cancellableContinuationImpl.getResult();
            if (result != coroutineSingletons) {
                str7 = str2;
                context2 = context;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            String str10 = (String) rememberLottieCompositionKt$lottieComposition$1.f22042e;
            String str11 = rememberLottieCompositionKt$lottieComposition$1.d;
            String str12 = rememberLottieCompositionKt$lottieComposition$1.f22041c;
            context2 = (Context) rememberLottieCompositionKt$lottieComposition$1.f22040b;
            ResultKt.b(result);
            str6 = str10;
            str7 = str11;
            str5 = str12;
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                LottieComposition lottieComposition2 = (LottieComposition) rememberLottieCompositionKt$lottieComposition$1.f22040b;
                ResultKt.b(result);
                return lottieComposition2;
            }
            lottieComposition = (LottieComposition) rememberLottieCompositionKt$lottieComposition$1.f22042e;
            str9 = rememberLottieCompositionKt$lottieComposition$1.d;
            str8 = rememberLottieCompositionKt$lottieComposition$1.f22041c;
            context3 = (Context) rememberLottieCompositionKt$lottieComposition$1.f22040b;
            ResultKt.b(result);
        }
        rememberLottieCompositionKt$lottieComposition$1.f22040b = lottieComposition;
        rememberLottieCompositionKt$lottieComposition$1.f22041c = null;
        rememberLottieCompositionKt$lottieComposition$1.d = null;
        rememberLottieCompositionKt$lottieComposition$1.f22042e = null;
        rememberLottieCompositionKt$lottieComposition$1.g = 3;
        if (lottieComposition.f21750f.isEmpty()) {
            objF2 = Unit.f71739a;
        } else {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            Context context4 = context3;
            objF2 = BuildersKt.f(DefaultIoScheduler.f75161b, new RememberLottieCompositionKt$loadFontsFromAssets$2(lottieComposition, context4, str8, str9, null), rememberLottieCompositionKt$lottieComposition$1);
            if (objF2 != coroutineSingletons) {
                objF2 = Unit.f71739a;
            }
        }
        if (objF2 != coroutineSingletons) {
            return coroutineSingletons;
        }
        return lottieComposition;
        LottieComposition lottieComposition3 = (LottieComposition) result;
        rememberLottieCompositionKt$lottieComposition$1.f22040b = context2;
        rememberLottieCompositionKt$lottieComposition$1.f22041c = str7;
        rememberLottieCompositionKt$lottieComposition$1.d = str6;
        rememberLottieCompositionKt$lottieComposition$1.f22042e = lottieComposition3;
        rememberLottieCompositionKt$lottieComposition$1.g = 2;
        if (lottieComposition3.d.isEmpty()) {
            objF = Unit.f71739a;
        } else {
            DefaultScheduler defaultScheduler2 = Dispatchers.f74659a;
            objF = BuildersKt.f(DefaultIoScheduler.f75161b, new RememberLottieCompositionKt$loadImagesFromAssets$2(lottieComposition3, context2, str5, null), rememberLottieCompositionKt$lottieComposition$1);
            if (objF != coroutineSingletons) {
                objF = Unit.f71739a;
            }
        }
        if (objF != coroutineSingletons) {
            str8 = str7;
            lottieComposition = lottieComposition3;
            context3 = context2;
            str9 = str6;
            rememberLottieCompositionKt$lottieComposition$1.f22040b = lottieComposition;
            rememberLottieCompositionKt$lottieComposition$1.f22041c = null;
            rememberLottieCompositionKt$lottieComposition$1.d = null;
            rememberLottieCompositionKt$lottieComposition$1.f22042e = null;
            rememberLottieCompositionKt$lottieComposition$1.g = 3;
            if (lottieComposition.f21750f.isEmpty()) {
                objF2 = Unit.f71739a;
            } else {
                DefaultScheduler defaultScheduler3 = Dispatchers.f74659a;
                Context context5 = context3;
                objF2 = BuildersKt.f(DefaultIoScheduler.f75161b, new RememberLottieCompositionKt$loadFontsFromAssets$2(lottieComposition, context5, str8, str9, null), rememberLottieCompositionKt$lottieComposition$1);
                if (objF2 != coroutineSingletons) {
                    objF2 = Unit.f71739a;
                }
            }
            if (objF2 != coroutineSingletons) {
                return lottieComposition;
            }
        }
        return coroutineSingletons;
    }

    public static final LottieTask b(Context context, LottieCompositionSpec lottieCompositionSpec, String str) {
        if (lottieCompositionSpec instanceof LottieCompositionSpec.RawRes) {
            if (!Intrinsics.c(str, "__LottieInternalDefaultCacheKey__")) {
                return LottieCompositionFactory.f(context, ((LottieCompositionSpec.RawRes) lottieCompositionSpec).f22018a, str);
            }
            int i2 = ((LottieCompositionSpec.RawRes) lottieCompositionSpec).f22018a;
            return LottieCompositionFactory.f(context, i2, LottieCompositionFactory.k(i2, context));
        }
        if (!(lottieCompositionSpec instanceof LottieCompositionSpec.Asset)) {
            v40.g();
            return null;
        }
        int i3 = 2;
        if (!Intrinsics.c(str, "__LottieInternalDefaultCacheKey__")) {
            String str2 = ((LottieCompositionSpec.Asset) lottieCompositionSpec).f22017a;
            HashMap map = LottieCompositionFactory.f21755a;
            return LottieCompositionFactory.a(str, new h7(context.getApplicationContext(), str2, str, i3), null);
        }
        String str3 = ((LottieCompositionSpec.Asset) lottieCompositionSpec).f22017a;
        HashMap map2 = LottieCompositionFactory.f21755a;
        String strConcat = "asset_".concat(str3);
        return LottieCompositionFactory.a(strConcat, new h7(context.getApplicationContext(), str3, strConcat, i3), null);
    }

    public static final LottieCompositionResultImpl c(LottieCompositionSpec lottieCompositionSpec, Composer composer, int i2) {
        composer.w(-1248473602);
        RememberLottieCompositionKt$rememberLottieComposition$1 rememberLottieCompositionKt$rememberLottieComposition$1 = new RememberLottieCompositionKt$rememberLottieComposition$1(3, null);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        composer.w(1388713953);
        int i3 = (i2 & 14) ^ 6;
        boolean z = (i3 > 4 && composer.K(lottieCompositionSpec)) || (i2 & 6) == 4;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (z || objX == composer$Companion$Empty$1) {
            objX = SnapshotStateKt.g(new LottieCompositionResultImpl());
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        composer.J();
        composer.w(1388714244);
        boolean zK = composer.K("__LottieInternalDefaultCacheKey__") | ((i3 > 4 && composer.K(lottieCompositionSpec)) || (i2 & 6) == 4);
        Object objX2 = composer.x();
        if (zK || objX2 == composer$Companion$Empty$1) {
            objX2 = b(context, lottieCompositionSpec, "__LottieInternalDefaultCacheKey__");
            composer.q(objX2);
        }
        composer.J();
        EffectsKt.g(lottieCompositionSpec, "__LottieInternalDefaultCacheKey__", new RememberLottieCompositionKt$rememberLottieComposition$3(rememberLottieCompositionKt$rememberLottieComposition$1, context, lottieCompositionSpec, mutableState, null), composer);
        LottieCompositionResultImpl lottieCompositionResultImpl = (LottieCompositionResultImpl) mutableState.getF10755b();
        composer.J();
        return lottieCompositionResultImpl;
    }
}
