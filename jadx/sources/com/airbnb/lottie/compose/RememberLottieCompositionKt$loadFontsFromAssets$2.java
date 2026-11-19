package com.airbnb.lottie.compose;

import android.content.Context;
import android.graphics.Typeface;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.utils.Logger;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.airbnb.lottie.compose.RememberLottieCompositionKt$loadFontsFromAssets$2", f = "rememberLottieComposition.kt", l = {}, m = "invokeSuspend")
final class RememberLottieCompositionKt$loadFontsFromAssets$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LottieComposition f22035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f22036c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f22037e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberLottieCompositionKt$loadFontsFromAssets$2(LottieComposition lottieComposition, Context context, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f22035b = lottieComposition;
        this.f22036c = context;
        this.d = str;
        this.f22037e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RememberLottieCompositionKt$loadFontsFromAssets$2(this.f22035b, this.f22036c, this.d, this.f22037e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RememberLottieCompositionKt$loadFontsFromAssets$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        for (Font font : this.f22035b.f21750f.values()) {
            Context context = this.f22036c;
            font.getClass();
            String str = font.f22072a;
            String str2 = font.f22074c;
            try {
                Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), tr.h(this.d, str, this.f22037e));
                try {
                    typefaceCreateFromAsset.getClass();
                    str2.getClass();
                    int i2 = 0;
                    boolean zK = StringsKt.k(str2, "Italic", false);
                    boolean zK2 = StringsKt.k(str2, "Bold", false);
                    if (zK && zK2) {
                        i2 = 3;
                    } else if (zK) {
                        i2 = 2;
                    } else if (zK2) {
                        i2 = 1;
                    }
                    if (typefaceCreateFromAsset.getStyle() != i2) {
                        typefaceCreateFromAsset = Typeface.create(typefaceCreateFromAsset, i2);
                    }
                    font.d = typefaceCreateFromAsset;
                } catch (Exception unused) {
                    Logger.f22287a.getClass();
                    AsyncUpdates asyncUpdates = L.f21740a;
                }
            } catch (Exception unused2) {
                Logger.f22287a.getClass();
                AsyncUpdates asyncUpdates2 = L.f21740a;
            }
        }
        return Unit.f71739a;
    }
}
