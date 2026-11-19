package com.airbnb.lottie.compose;

import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.value.LottieFrameInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BB\b\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012'\u0010\u000b\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\f\u0010\rB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\f\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/airbnb/lottie/compose/LottieDynamicProperty;", "T", "", "property", "Lcom/airbnb/lottie/model/KeyPath;", "keyPath", "Lkotlin/Function1;", "Lcom/airbnb/lottie/value/LottieFrameInfo;", "Lkotlin/ParameterName;", "name", "frameInfo", "callback", "<init>", "(Ljava/lang/Object;Lcom/airbnb/lottie/model/KeyPath;Lkotlin/jvm/functions/Function1;)V", "value", "(Ljava/lang/Object;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;)V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LottieDynamicProperty<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f22029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KeyPath f22030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f22031c;

    public LottieDynamicProperty(T t, KeyPath keyPath, Function1<? super LottieFrameInfo<T>, ? extends T> function1) {
        keyPath.getClass();
        function1.getClass();
        this.f22029a = t;
        this.f22030b = keyPath;
        this.f22031c = function1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LottieDynamicProperty(T t, KeyPath keyPath, final T t2) {
        this((Object) t, keyPath, (Function1) new Function1<LottieFrameInfo<T>, T>() { // from class: com.airbnb.lottie.compose.LottieDynamicProperty.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((LottieFrameInfo) obj).getClass();
                return t2;
            }
        });
        keyPath.getClass();
    }
}
