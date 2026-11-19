package com.vuitton.android.presentation.redirectlink;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"com/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView", "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;", "", "storyUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LinkEffect$Navigation$Direct$Common$ToWebView implements LinkEffect.Navigation.Direct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51966a;

    public LinkEffect$Navigation$Direct$Common$ToWebView(String str) {
        str.getClass();
        this.f51966a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinkEffect$Navigation$Direct$Common$ToWebView) && Intrinsics.c(this.f51966a, ((LinkEffect$Navigation$Direct$Common$ToWebView) obj).f51966a);
    }

    public final int hashCode() {
        return this.f51966a.hashCode();
    }

    public final String toString() {
        return fc.h("ToWebView(storyUrl=", this.f51966a, ")");
    }
}
