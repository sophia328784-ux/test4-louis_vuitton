package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class Key {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11565a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11566b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11567c = null;
    public HashMap d;

    @Override // 
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract Key clone();

    public Key b(Key key) {
        this.f11565a = key.f11565a;
        this.f11566b = key.f11566b;
        this.f11567c = key.f11567c;
        this.d = key.d;
        return this;
    }

    public abstract void c(HashSet hashSet);

    public abstract void d(Context context, AttributeSet attributeSet);

    public void e(HashMap map) {
    }
}
