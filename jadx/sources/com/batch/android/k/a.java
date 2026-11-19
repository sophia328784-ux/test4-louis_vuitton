package com.batch.android.k;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutInflater f23596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f23597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<C0057a> f23598c = new ArrayList();

    /* JADX INFO: renamed from: com.batch.android.k.a$a, reason: collision with other inner class name */
    public class C0057a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f23599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayAdapter<String> f23600b;

        public C0057a(String str, ArrayAdapter<String> arrayAdapter) {
            this.f23599a = str;
            this.f23600b = arrayAdapter;
        }

        public String a() {
            return this.f23599a;
        }

        public ArrayAdapter<String> b() {
            return this.f23600b;
        }
    }

    public a(Context context) {
        this.f23597b = context;
        this.f23596a = LayoutInflater.from(context);
    }

    public void a(String str, Set<String> set) {
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.f23597b, R.layout.simple_list_item_1, R.id.text1);
        arrayAdapter.setNotifyOnChange(false);
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            arrayAdapter.add(it.next());
        }
        this.f23598c.add(new C0057a(str, arrayAdapter));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f23598c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f23596a.inflate(com.batch.android.R.layout.com_batchsdk_user_data_debug_collection_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(com.batch.android.R.id.com_batchsdk_user_data_debug_collection_name);
        ListView listView = (ListView) view.findViewById(com.batch.android.R.id.com_batchsdk_user_data_debug_tag_list);
        C0057a item = getItem(i2);
        textView.setText(item.a());
        listView.setAdapter((ListAdapter) item.b());
        return view;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0057a getItem(int i2) {
        return this.f23598c.get(i2);
    }

    public void a() {
        this.f23598c.clear();
        notifyDataSetChanged();
    }
}
