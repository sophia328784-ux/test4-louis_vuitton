package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f12552k;
    public final LayoutInflater l;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i2, Cursor cursor) {
        super(context, cursor);
        this.f12552k = i2;
        this.f12551j = i2;
        this.l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public final View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.f12552k, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.f12551j, viewGroup, false);
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i2, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f12552k = i2;
        this.f12551j = i2;
        this.l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i2, Cursor cursor, int i3) {
        super(context, cursor, i3);
        this.f12552k = i2;
        this.f12551j = i2;
        this.l = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
