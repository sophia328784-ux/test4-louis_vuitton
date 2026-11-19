package androidx.compose.foundation.text.input.internal;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1 extends FunctionReferenceImpl implements Function1<View, InputMethodManagerImpl> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1 f6225b = new LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1(1, InputMethodManagerImpl.class, "<init>", "<init>(Landroid/view/View;)V", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new InputMethodManagerImpl((View) obj);
    }
}
