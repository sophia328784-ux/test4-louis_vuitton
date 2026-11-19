package com.linecorp.linesdk.openchat;

import android.text.Editable;
import android.text.TextWatcher;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/linecorp/linesdk/openchat/KotlinExtensionsKt$addAfterTextChangedAction$1", "Landroid/text/TextWatcher;", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class KotlinExtensionsKt$addAfterTextChangedAction$1 implements TextWatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f36255b;

    public KotlinExtensionsKt$addAfterTextChangedAction$1(Function1 function1) {
        this.f36255b = function1;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String string = editable != null ? editable.toString() : null;
        if (string == null) {
            string = "";
        }
        this.f36255b.invoke(string);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
