package com.vuitton.android.presentation.screen.search.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/models/AutocompleteDisplayUiModel;", "", "", "text", "", "isHighlighted", "<init>", "(Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AutocompleteDisplayUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64240b;

    public AutocompleteDisplayUiModel(String str, boolean z) {
        str.getClass();
        this.f64239a = str;
        this.f64240b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteDisplayUiModel)) {
            return false;
        }
        AutocompleteDisplayUiModel autocompleteDisplayUiModel = (AutocompleteDisplayUiModel) obj;
        return Intrinsics.c(this.f64239a, autocompleteDisplayUiModel.f64239a) && this.f64240b == autocompleteDisplayUiModel.f64240b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f64240b) + (this.f64239a.hashCode() * 31);
    }

    public final String toString() {
        return d21.m("AutocompleteDisplayUiModel(text=", this.f64239a, ", isHighlighted=", ")", this.f64240b);
    }
}
