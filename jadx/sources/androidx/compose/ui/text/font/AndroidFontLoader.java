package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.core.content.res.ResourcesCompat;
import defpackage.az;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.Result;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFontLoader;", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidFontLoader implements PlatformFontLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10660a;

    public AndroidFontLoader(Context context) {
        this.f10660a = context.getApplicationContext();
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    public final Object a(Font font) {
        Object failure;
        android.graphics.Typeface typefaceB;
        if (font instanceof AndroidFont) {
            return ((AndroidFont) font).f10659b.a();
        }
        if (font instanceof ResourceFont) {
            ResourceFont resourceFont = (ResourceFont) font;
            int i2 = resourceFont.f10746e;
            FontLoadingStrategy.f10712a.getClass();
            Context context = this.f10660a;
            if (i2 == 0) {
                typefaceB = ResourcesCompat.b(resourceFont.f10743a, context);
                typefaceB.getClass();
            } else if (i2 == FontLoadingStrategy.f10713b) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    failure = ResourcesCompat.b(((ResourceFont) font).f10743a, context);
                    failure.getClass();
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
                typefaceB = (android.graphics.Typeface) (failure instanceof Result.Failure ? null : failure);
            } else {
                if (i2 == FontLoadingStrategy.f10714c) {
                    mt.i("Unsupported Async font load path");
                    return null;
                }
                az.w(FontLoadingStrategy.a(i2), "Unknown loading type ");
            }
            return PlatformTypefaces_androidKt.a(typefaceB, resourceFont.d, context);
        }
        return null;
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    /* JADX INFO: renamed from: b */
    public final Object getF10694b() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        if (r14 == r1) goto L31;
     */
    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(androidx.compose.ui.text.font.Font r13, kotlin.coroutines.Continuation r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof androidx.compose.ui.text.font.AndroidFontLoader$awaitLoad$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.compose.ui.text.font.AndroidFontLoader$awaitLoad$1 r0 = (androidx.compose.ui.text.font.AndroidFontLoader$awaitLoad$1) r0
            int r1 = r0.f10663e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f10663e = r1
            goto L1a
        L13:
            androidx.compose.ui.text.font.AndroidFontLoader$awaitLoad$1 r0 = new androidx.compose.ui.text.font.AndroidFontLoader$awaitLoad$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r14 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r14
            r0.<init>(r12, r14)
        L1a:
            java.lang.Object r14 = r0.f10662c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f10663e
            r3 = 0
            r4 = 2
            android.content.Context r5 = r12.f10660a
            r12 = 1
            if (r2 == 0) goto L3b
            if (r2 == r12) goto L37
            if (r2 != r4) goto L31
            androidx.compose.ui.text.font.ResourceFont r13 = r0.f10661b
            kotlin.ResultKt.b(r14)
            goto L8d
        L31:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r3
        L37:
            kotlin.ResultKt.b(r14)
            return r14
        L3b:
            kotlin.ResultKt.b(r14)
            boolean r14 = r13 instanceof androidx.compose.ui.text.font.AndroidFont
            if (r14 == 0) goto L50
            androidx.compose.ui.text.font.AndroidFont r13 = (androidx.compose.ui.text.font.AndroidFont) r13
            androidx.compose.ui.text.font.AndroidFont$TypefaceLoader r13 = r13.f10659b
            r0.f10663e = r12
            java.lang.Object r12 = r13.b()
            if (r12 != r1) goto L4f
            goto L8c
        L4f:
            return r12
        L50:
            boolean r14 = r13 instanceof androidx.compose.ui.text.font.ResourceFont
            if (r14 == 0) goto L98
            r14 = r13
            androidx.compose.ui.text.font.ResourceFont r14 = (androidx.compose.ui.text.font.ResourceFont) r14
            r0.f10661b = r14
            r0.f10663e = r4
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.b(r0)
            r2.<init>(r0, r12)
            r2.initCancellability()
            int r6 = r14.f10743a
            androidx.compose.ui.text.font.AndroidFontLoader_androidKt$loadAsync$2$1 r9 = new androidx.compose.ui.text.font.AndroidFontLoader_androidKt$loadAsync$2$1
            r9.<init>()
            java.lang.ThreadLocal r12 = androidx.core.content.res.ResourcesCompat.f12034a
            boolean r12 = r5.isRestricted()
            if (r12 == 0) goto L7b
            r12 = -4
            r9.a(r12)
            goto L86
        L7b:
            android.util.TypedValue r7 = new android.util.TypedValue
            r7.<init>()
            r10 = 0
            r11 = 0
            r8 = 0
            androidx.core.content.res.ResourcesCompat.c(r5, r6, r7, r8, r9, r10, r11)
        L86:
            java.lang.Object r14 = r2.getResult()
            if (r14 != r1) goto L8d
        L8c:
            return r1
        L8d:
            android.graphics.Typeface r14 = (android.graphics.Typeface) r14
            androidx.compose.ui.text.font.ResourceFont r13 = (androidx.compose.ui.text.font.ResourceFont) r13
            androidx.compose.ui.text.font.FontVariation$Settings r12 = r13.d
            android.graphics.Typeface r12 = androidx.compose.ui.text.font.PlatformTypefaces_androidKt.a(r14, r12, r5)
            return r12
        L98:
            java.lang.String r12 = "Unknown font type: "
            defpackage.az.m(r13, r12)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.AndroidFontLoader.c(androidx.compose.ui.text.font.Font, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
