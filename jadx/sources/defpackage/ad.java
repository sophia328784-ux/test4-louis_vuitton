package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ad implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextLinkScope f480c;

    public /* synthetic */ ad(TextLinkScope textLinkScope, int i2) {
        this.f479b = i2;
        this.f480c = textLinkScope;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        TextLayoutInput textLayoutInput;
        int i2 = this.f479b;
        int i3 = 2;
        TextLinkScope textLinkScope = this.f480c;
        switch (i2) {
            case 0:
                return Boolean.valueOf(textLinkScope != null ? ((Boolean) new ad(textLinkScope, i3).mo47invoke()).booleanValue() : false);
            case 1:
                return Boolean.valueOf(textLinkScope != null ? ((Boolean) new ad(textLinkScope, i3).mo47invoke()).booleanValue() : false);
            default:
                AnnotatedString annotatedString = textLinkScope.f6015b;
                TextLayoutResult textLayoutResult = (TextLayoutResult) ((SnapshotMutableStateImpl) textLinkScope.f6014a).getF10755b();
                return Boolean.valueOf(Intrinsics.c(annotatedString, (textLayoutResult == null || (textLayoutInput = textLayoutResult.f10552a) == null) ? null : textLayoutInput.f10543a));
        }
    }
}
