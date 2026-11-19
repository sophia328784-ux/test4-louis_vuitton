package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import defpackage.md;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
public abstract class CursorAdapter extends BaseAdapter implements Filterable, CursorFilter.CursorFilterClient {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f12542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12543c;
    public Cursor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f12544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12545f;
    public ChangeObserver g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DataSetObserver f12546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CursorFilter f12547i;

    public class ChangeObserver extends ContentObserver {
        public ChangeObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            Cursor cursor;
            CursorAdapter cursorAdapter = CursorAdapter.this;
            if (!cursorAdapter.f12543c || (cursor = cursorAdapter.d) == null || cursor.isClosed()) {
                return;
            }
            cursorAdapter.f12542b = cursorAdapter.d.requery();
        }
    }

    public class MyDataSetObserver extends DataSetObserver {
        public MyDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f12542b = true;
            cursorAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f12542b = false;
            cursorAdapter.notifyDataSetInvalidated();
        }
    }

    public CursorAdapter(Context context, Cursor cursor, boolean z) {
        f(context, cursor, z ? 1 : 2);
    }

    public void a(Cursor cursor) {
        Cursor cursor2 = this.d;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                ChangeObserver changeObserver = this.g;
                if (changeObserver != null) {
                    cursor2.unregisterContentObserver(changeObserver);
                }
                DataSetObserver dataSetObserver = this.f12546h;
                if (dataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.d = cursor;
            if (cursor != null) {
                ChangeObserver changeObserver2 = this.g;
                if (changeObserver2 != null) {
                    cursor.registerContentObserver(changeObserver2);
                }
                DataSetObserver dataSetObserver2 = this.f12546h;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f12545f = cursor.getColumnIndexOrThrow("_id");
                this.f12542b = true;
                notifyDataSetChanged();
            } else {
                this.f12545f = -1;
                this.f12542b = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public String c(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    public Cursor d(CharSequence charSequence) {
        return this.d;
    }

    public abstract void e(View view, Cursor cursor);

    public final void f(Context context, Cursor cursor, int i2) {
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f12543c = true;
        } else {
            this.f12543c = false;
        }
        boolean z = cursor != null;
        this.d = cursor;
        this.f12542b = z;
        this.f12544e = context;
        this.f12545f = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i2 & 2) == 2) {
            this.g = new ChangeObserver();
            this.f12546h = new MyDataSetObserver();
        } else {
            this.g = null;
            this.f12546h = null;
        }
        if (z) {
            ChangeObserver changeObserver = this.g;
            if (changeObserver != null) {
                cursor.registerContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.f12546h;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return h(context, cursor, viewGroup);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f12542b || (cursor = this.d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f12542b) {
            return null;
        }
        this.d.moveToPosition(i2);
        if (view == null) {
            view = g(this.f12544e, this.d, viewGroup);
        }
        e(view, this.d);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f12547i == null) {
            CursorFilter cursorFilter = new CursorFilter();
            cursorFilter.f12550a = this;
            this.f12547i = cursorFilter;
        }
        return this.f12547i;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        Cursor cursor;
        if (!this.f12542b || (cursor = this.d) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.d;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        Cursor cursor;
        if (this.f12542b && (cursor = this.d) != null && cursor.moveToPosition(i2)) {
            return this.d.getLong(this.f12545f);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f12542b) {
            md.k("this should only be called when the cursor is valid");
            return null;
        }
        if (!this.d.moveToPosition(i2)) {
            md.k(pq0.k(i2, "couldn't move cursor to position "));
            return null;
        }
        if (view == null) {
            view = h(this.f12544e, this.d, viewGroup);
        }
        e(view, this.d);
        return view;
    }

    public abstract View h(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Deprecated
    public CursorAdapter(Context context, Cursor cursor) {
        f(context, cursor, 1);
    }

    public CursorAdapter(Context context, Cursor cursor, int i2) {
        f(context, cursor, i2);
    }
}
