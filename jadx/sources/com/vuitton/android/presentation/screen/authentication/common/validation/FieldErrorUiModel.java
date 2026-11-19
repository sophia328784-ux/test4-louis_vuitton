package com.vuitton.android.presentation.screen.authentication.common.validation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FieldErrorUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f53489a = SnapshotStateKt.g(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f53490b = SnapshotStateKt.g(Boolean.FALSE);

    public final void a() {
        ((SnapshotMutableStateImpl) this.f53489a).setValue(null);
        ((SnapshotMutableStateImpl) this.f53490b).setValue(Boolean.FALSE);
    }

    public final boolean b() {
        CharSequence charSequence = (CharSequence) ((SnapshotMutableStateImpl) this.f53489a).getF10755b();
        return !(charSequence == null || StringsKt.w(charSequence)) || ((Boolean) ((SnapshotMutableStateImpl) this.f53490b).getF10755b()).booleanValue();
    }

    public final void c(String str) {
        ((SnapshotMutableStateImpl) this.f53489a).setValue(str);
    }
}
