package androidx.recyclerview.widget;

import defpackage.tr;

/* JADX INFO: loaded from: classes.dex */
class LayoutState {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f19225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19226c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f19227e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f19229h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f19230i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f19224a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19228f = 0;
    public int g = 0;

    public final String toString() {
        StringBuilder sb = new StringBuilder("LayoutState{mAvailable=");
        sb.append(this.f19225b);
        sb.append(", mCurrentPosition=");
        sb.append(this.f19226c);
        sb.append(", mItemDirection=");
        sb.append(this.d);
        sb.append(", mLayoutDirection=");
        sb.append(this.f19227e);
        sb.append(", mStartLine=");
        sb.append(this.f19228f);
        sb.append(", mEndLine=");
        return tr.k(sb, this.g, '}');
    }
}
