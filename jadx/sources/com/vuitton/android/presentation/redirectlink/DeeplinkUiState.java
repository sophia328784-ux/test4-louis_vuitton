package com.vuitton.android.presentation.redirectlink;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;", "", "", "isLoading", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DeeplinkUiState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f51954a;

    public /* synthetic */ DeeplinkUiState(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeeplinkUiState) && this.f51954a == ((DeeplinkUiState) obj).f51954a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f51954a);
    }

    public final String toString() {
        return tr.i("DeeplinkUiState(isLoading=", ")", this.f51954a);
    }

    public DeeplinkUiState(boolean z) {
        this.f51954a = z;
    }

    public DeeplinkUiState() {
        this(false, 1, null);
    }
}
