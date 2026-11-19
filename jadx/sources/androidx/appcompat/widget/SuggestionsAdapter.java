package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.cursoradapter.widget.ResourceCursorAdapter;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.pq0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class SuggestionsAdapter extends ResourceCursorAdapter implements View.OnClickListener {
    public static final /* synthetic */ int z = 0;
    public final SearchView m;
    public final SearchableInfo n;
    public final Context o;
    public final WeakHashMap p;
    public final int q;
    public int r;
    public ColorStateList s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;

    public static final class ChildViewCache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1297a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f1298b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageView f1299c;
        public final ImageView d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImageView f1300e;

        public ChildViewCache(View view) {
            this.f1297a = (TextView) view.findViewById(R.id.text1);
            this.f1298b = (TextView) view.findViewById(R.id.text2);
            this.f1299c = (ImageView) view.findViewById(R.id.icon1);
            this.d = (ImageView) view.findViewById(R.id.icon2);
            this.f1300e = (ImageView) view.findViewById(com.vuitton.android.R.id.edit_query);
        }
    }

    public SuggestionsAdapter(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        this.r = 1;
        this.t = -1;
        this.u = -1;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = -1;
        this.m = searchView;
        this.n = searchableInfo;
        this.q = searchView.getSuggestionCommitIconResId();
        this.o = context;
        this.p = weakHashMap;
    }

    public static String l(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public final void a(Cursor cursor) {
        try {
            super.a(cursor);
            if (cursor != null) {
                this.t = cursor.getColumnIndex("suggest_text_1");
                this.u = cursor.getColumnIndex("suggest_text_2");
                this.v = cursor.getColumnIndex("suggest_text_2_url");
                this.w = cursor.getColumnIndex("suggest_icon_1");
                this.x = cursor.getColumnIndex("suggest_icon_2");
                this.y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public final String c(Cursor cursor) {
        String strL;
        String strL2;
        if (cursor == null) {
            return null;
        }
        String strL3 = l(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strL3 != null) {
            return strL3;
        }
        SearchableInfo searchableInfo = this.n;
        if (searchableInfo.shouldRewriteQueryFromData() && (strL2 = l(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strL2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (strL = l(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strL;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public final Cursor d(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        SearchView searchView = this.m;
        if (searchView.getVisibility() != 0 || searchView.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor cursorK = k(this.n, string);
            if (cursorK == null) {
                return null;
            }
            cursorK.getCount();
            return cursorK;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public final void e(View view, Cursor cursor) {
        int i2;
        Drawable drawableJ;
        CharSequence charSequenceL;
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i3 = this.y;
        int i4 = i3 != -1 ? cursor.getInt(i3) : 0;
        TextView textView = childViewCache.f1297a;
        TextView textView2 = childViewCache.f1298b;
        ImageView imageView = childViewCache.f1300e;
        if (textView != null) {
            String strL = l(cursor, this.t);
            textView.setText(strL);
            if (TextUtils.isEmpty(strL)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
            }
        }
        Context context = this.o;
        if (textView2 != null) {
            String strL2 = l(cursor, this.v);
            if (strL2 != null) {
                if (this.s == null) {
                    TypedValue typedValue = new TypedValue();
                    context.getTheme().resolveAttribute(com.vuitton.android.R.attr.textColorSearchUrl, typedValue, true);
                    this.s = context.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(strL2);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.s, null), 0, strL2.length(), 33);
                charSequenceL = spannableString;
            } else {
                charSequenceL = l(cursor, this.u);
            }
            if (TextUtils.isEmpty(charSequenceL)) {
                if (textView != null) {
                    textView.setSingleLine(false);
                    textView.setMaxLines(2);
                }
            } else if (textView != null) {
                textView.setSingleLine(true);
                textView.setMaxLines(1);
            }
            textView2.setText(charSequenceL);
            if (TextUtils.isEmpty(charSequenceL)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
            }
        }
        ImageView imageView2 = childViewCache.f1299c;
        if (imageView2 != null) {
            int i5 = this.w;
            if (i5 == -1) {
                drawableJ = null;
            } else {
                drawableJ = j(cursor.getString(i5));
                if (drawableJ == null) {
                    ComponentName searchActivity = this.n.getSearchActivity();
                    String strFlattenToShortString = searchActivity.flattenToShortString();
                    WeakHashMap weakHashMap = this.p;
                    if (weakHashMap.containsKey(strFlattenToShortString)) {
                        Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(strFlattenToShortString);
                        drawableJ = constantState == null ? null : constantState.newDrawable(context.getResources());
                    } else {
                        PackageManager packageManager = context.getPackageManager();
                        try {
                            ActivityInfo activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            int iconResource = activityInfo.getIconResource();
                            if (iconResource != 0) {
                                Drawable drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                                if (drawable == null) {
                                    searchActivity.flattenToShortString();
                                    drawableJ = null;
                                } else {
                                    drawableJ = drawable;
                                }
                            } else {
                                drawableJ = null;
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            e2.toString();
                        }
                        weakHashMap.put(strFlattenToShortString, drawableJ == null ? null : drawableJ.getConstantState());
                    }
                    if (drawableJ == null) {
                        drawableJ = context.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            imageView2.setImageDrawable(drawableJ);
            if (drawableJ == null) {
                imageView2.setVisibility(4);
            } else {
                imageView2.setVisibility(0);
                drawableJ.setVisible(false, false);
                drawableJ.setVisible(true, false);
            }
        }
        ImageView imageView3 = childViewCache.d;
        if (imageView3 == null) {
            i2 = 1;
        } else {
            int i6 = this.x;
            Drawable drawableJ2 = i6 == -1 ? null : j(cursor.getString(i6));
            imageView3.setImageDrawable(drawableJ2);
            if (drawableJ2 == null) {
                imageView3.setVisibility(8);
                i2 = 1;
            } else {
                imageView3.setVisibility(0);
                drawableJ2.setVisible(false, false);
                i2 = 1;
                drawableJ2.setVisible(true, false);
            }
        }
        int i7 = this.r;
        if (i7 != 2 && (i7 != i2 || (i4 & 1) == 0)) {
            imageView.setVisibility(8);
            return;
        }
        imageView.setVisibility(0);
        imageView.setTag(textView.getText());
        imageView.setOnClickListener(this);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            View viewG = g(this.o, this.d, viewGroup);
            if (viewG != null) {
                ((ChildViewCache) viewG.getTag()).f1297a.setText(e2.toString());
            }
            return viewG;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            View viewH = h(this.o, this.d, viewGroup);
            ((ChildViewCache) viewH.getTag()).f1297a.setText(e2.toString());
            return viewH;
        }
    }

    @Override // androidx.cursoradapter.widget.ResourceCursorAdapter, androidx.cursoradapter.widget.CursorAdapter
    public final View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewH = super.h(context, cursor, viewGroup);
        viewH.setTag(new ChildViewCache(viewH));
        ((ImageView) viewH.findViewById(com.vuitton.android.R.id.edit_query)).setImageResource(this.q);
        return viewH;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    public final Drawable i(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException(pq0.l(uri, "No authority: "));
        }
        try {
            Resources resourcesForApplication = this.o.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException(pq0.l(uri, "No path: "));
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException(pq0.l(uri, "Single path segment is not a resource ID: "));
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException(pq0.l(uri, "More than two path segments: "));
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException(pq0.l(uri, "No resource found for: "));
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException(pq0.l(uri, "No package found for authority: "));
        }
    }

    public final Drawable j(String str) {
        WeakHashMap weakHashMap = this.p;
        Context context = this.o;
        Drawable drawableI = null;
        if (str != null && !str.isEmpty() && !ContentTree.ROOT_ID.equals(str)) {
            try {
                int i2 = Integer.parseInt(str);
                String str2 = "android.resource://" + context.getPackageName() + "/" + i2;
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(str2);
                Drawable drawableNewDrawable = constantState == null ? null : constantState.newDrawable();
                if (drawableNewDrawable != null) {
                    return drawableNewDrawable;
                }
                Drawable drawable = ContextCompat.getDrawable(context, i2);
                if (drawable != null) {
                    weakHashMap.put(str2, drawable.getConstantState());
                }
                return drawable;
            } catch (Resources.NotFoundException unused) {
            } catch (NumberFormatException unused2) {
                Drawable.ConstantState constantState2 = (Drawable.ConstantState) weakHashMap.get(str);
                Drawable drawableNewDrawable2 = constantState2 == null ? null : constantState2.newDrawable();
                if (drawableNewDrawable2 != null) {
                    return drawableNewDrawable2;
                }
                Uri uri = Uri.parse(str);
                try {
                    if ("android.resource".equals(uri.getScheme())) {
                        try {
                            drawableI = i(uri);
                        } catch (Resources.NotFoundException unused3) {
                            throw new FileNotFoundException("Resource does not exist: " + uri);
                        }
                    } else {
                        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                        if (inputStreamOpenInputStream == null) {
                            throw new FileNotFoundException("Failed to open " + uri);
                        }
                        try {
                            Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException unused4) {
                                uri.toString();
                            }
                            drawableI = drawableCreateFromStream;
                        } catch (Throwable th) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException unused5) {
                                uri.toString();
                            }
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e2) {
                    Objects.toString(uri);
                    e2.getMessage();
                }
                if (drawableI != null) {
                    weakHashMap.put(str, drawableI.getConstantState());
                }
            }
        }
        return drawableI;
    }

    public final Cursor k(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        builderFragment.appendQueryParameter(ConfigurationName.CELLINFO_LIMIT, String.valueOf(50));
        return this.o.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.d;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.d;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Callback.n(view);
        try {
            Object tag = view.getTag();
            if (tag instanceof CharSequence) {
                this.m.o((CharSequence) tag);
            }
        } finally {
            Callback.o();
        }
    }
}
