package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import com.dynatrace.android.callback.Callback;
import com.github.druk.dnssd.DNSSDException;
import com.vuitton.android.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    public static final /* synthetic */ int l1 = 0;
    public final Rect A;
    public final Rect B;
    public final int[] C;
    public final int[] D;
    public final ImageView E;
    public final Drawable F;
    public final int G;
    public final int H;
    public final Intent I;
    public final Intent J;
    public final CharSequence K;
    public OnQueryTextListener L;
    public OnCloseListener M;
    public View.OnFocusChangeListener N;
    public OnSuggestionListener O;
    public View.OnClickListener P;
    public boolean Q;
    public boolean R;
    public CursorAdapter S;
    public boolean T;
    public CharSequence V;
    public boolean W;
    public boolean b1;
    public String c1;
    public CharSequence d1;
    public boolean e1;
    public int f1;
    public SearchableInfo g1;
    public boolean h0;
    public Bundle h1;
    public final Runnable i1;
    public final Runnable j1;
    public final WeakHashMap k1;
    public final SearchAutoComplete q;
    public final View r;
    public final View s;
    public final View t;
    public int t0;
    public final ImageView u;
    public final ImageView v;
    public final ImageView w;
    public final ImageView x;
    public final View y;
    public UpdatableTouchDelegate z;

    public static class Api29Impl {
        public static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        public static void b(SearchAutoComplete searchAutoComplete, int i2) {
            searchAutoComplete.setInputMethodMode(i2);
        }
    }

    public interface OnCloseListener {
        boolean a();
    }

    public interface OnQueryTextListener {
        boolean a();

        boolean b();
    }

    public interface OnSuggestionListener {
        boolean a();

        boolean b();
    }

    public static class UpdatableTouchDelegate extends TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f1292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f1293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Rect f1294c;
        public final Rect d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f1295e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1296f;

        public UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
            super(rect, view);
            int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1295e = scaledTouchSlop;
            Rect rect3 = new Rect();
            this.f1293b = rect3;
            Rect rect4 = new Rect();
            this.d = rect4;
            Rect rect5 = new Rect();
            this.f1294c = rect5;
            rect3.set(rect);
            rect4.set(rect);
            int i2 = -scaledTouchSlop;
            rect4.inset(i2, i2);
            rect5.set(rect2);
            this.f1292a = view;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003e  */
        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f1296f;
                    if (z2 && !this.d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else if (action != 3) {
                    z = true;
                    z3 = false;
                } else {
                    z2 = this.f1296f;
                    this.f1296f = false;
                }
                z3 = z2;
                z = true;
            } else if (this.f1293b.contains(x, y)) {
                this.f1296f = true;
                z = true;
            } else {
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            Rect rect = this.f1294c;
            View view = this.f1292a;
            if (!z || rect.contains(x, y)) {
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            }
            return view.dispatchTouchEvent(motionEvent);
        }
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.A = new Rect();
        this.B = new Rect();
        this.C = new int[2];
        this.D = new int[2];
        this.i1 = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.s();
            }
        };
        this.j1 = new Runnable() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                CursorAdapter cursorAdapter = SearchView.this.S;
                if (cursorAdapter instanceof SuggestionsAdapter) {
                    cursorAdapter.a(null);
                }
            }
        };
        this.k1 = new WeakHashMap();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback.n(view);
                try {
                    SearchView searchView = SearchView.this;
                    SearchAutoComplete searchAutoComplete = searchView.q;
                    if (view == searchView.u) {
                        searchView.w(false);
                        searchAutoComplete.requestFocus();
                        searchAutoComplete.setImeVisibility(true);
                        View.OnClickListener onClickListener2 = searchView.P;
                        if (onClickListener2 != null) {
                            onClickListener2.onClick(searchView);
                        }
                    } else if (view == searchView.w) {
                        searchView.l();
                    } else if (view == searchView.v) {
                        searchView.p();
                    } else if (view == searchView.x) {
                        searchView.q();
                    } else if (view == searchAutoComplete) {
                        Api29Impl.a(searchAutoComplete);
                    }
                } finally {
                    Callback.o();
                }
            }
        };
        View.OnKeyListener onKeyListener = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i3, KeyEvent keyEvent) {
                SearchView searchView = SearchView.this;
                SearchAutoComplete searchAutoComplete = searchView.q;
                if (searchView.g1 != null) {
                    if (!searchAutoComplete.isPopupShowing() || searchAutoComplete.getListSelection() == -1) {
                        if (TextUtils.getTrimmedLength(searchAutoComplete.getText()) != 0 && keyEvent.hasNoModifiers() && keyEvent.getAction() == 1 && i3 == 66) {
                            view.cancelLongPress();
                            searchView.getContext().startActivity(searchView.j("android.intent.action.SEARCH", null, null, searchAutoComplete.getText().toString()));
                            return true;
                        }
                    } else if (searchView.g1 != null && searchView.S != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
                        if (i3 == 66 || i3 == 84 || i3 == 61) {
                            return searchView.m(searchAutoComplete.getListSelection());
                        }
                        if (i3 == 21 || i3 == 22) {
                            searchAutoComplete.setSelection(i3 == 21 ? 0 : searchAutoComplete.length());
                            searchAutoComplete.setListSelection(0);
                            searchAutoComplete.clearListSelection();
                            Api29Impl.b(searchAutoComplete, 1);
                            if (searchAutoComplete.enoughToFilter()) {
                                searchAutoComplete.showDropDown();
                            }
                            return true;
                        }
                        if (i3 == 19) {
                            searchAutoComplete.getListSelection();
                            return false;
                        }
                    }
                }
                return false;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                SearchView.this.p();
                return true;
            }
        };
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
                Callback.q(view);
                try {
                    SearchView.this.m(i3);
                } finally {
                    Callback.r();
                }
            }
        };
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView adapterView, View view, int i3, long j2) {
                Callback.s(view);
                try {
                    SearchView.this.n(i3);
                } finally {
                    Callback.t();
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView adapterView) {
            }
        };
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                SearchView searchView = SearchView.this;
                Editable text = searchView.q.getText();
                searchView.d1 = text;
                boolean zIsEmpty = TextUtils.isEmpty(text);
                searchView.v(!zIsEmpty);
                int i6 = 8;
                if (searchView.b1 && !searchView.R && zIsEmpty) {
                    searchView.v.setVisibility(8);
                    i6 = 0;
                }
                searchView.x.setVisibility(i6);
                searchView.r();
                searchView.u();
                if (searchView.L != null && !TextUtils.equals(charSequence, searchView.c1)) {
                    OnQueryTextListener onQueryTextListener = searchView.L;
                    charSequence.toString();
                    onQueryTextListener.b();
                }
                searchView.c1 = charSequence.toString();
            }
        };
        int[] iArr = R$styleable.v;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context, attributeSet, iArr);
        ViewCompat.s(this, context, iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        layoutInflaterFrom.inflate(typedArray.getResourceId(19, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.q = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.r = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.s = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.t = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.u = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.v = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.w = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.x = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.E = imageView5;
        viewFindViewById.setBackground(tintTypedArrayE.b(20));
        viewFindViewById2.setBackground(tintTypedArrayE.b(25));
        imageView.setImageDrawable(tintTypedArrayE.b(23));
        imageView2.setImageDrawable(tintTypedArrayE.b(15));
        imageView3.setImageDrawable(tintTypedArrayE.b(12));
        imageView4.setImageDrawable(tintTypedArrayE.b(28));
        imageView5.setImageDrawable(tintTypedArrayE.b(23));
        this.F = tintTypedArrayE.b(22);
        TooltipCompat.Api26Impl.a(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.G = typedArray.getResourceId(26, R.layout.abc_search_dropdown_item_icons_2line);
        this.H = typedArray.getResourceId(13, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(textWatcher);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(onItemClickListener);
        searchAutoComplete.setOnItemSelectedListener(onItemSelectedListener);
        searchAutoComplete.setOnKeyListener(onKeyListener);
        searchAutoComplete.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                SearchView searchView = SearchView.this;
                View.OnFocusChangeListener onFocusChangeListener = searchView.N;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z);
                }
            }
        });
        setIconifiedByDefault(typedArray.getBoolean(18, true));
        int dimensionPixelSize = typedArray.getDimensionPixelSize(2, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.K = typedArray.getText(14);
        this.V = typedArray.getText(21);
        int i3 = typedArray.getInt(6, -1);
        if (i3 != -1) {
            setImeOptions(i3);
        }
        int i4 = typedArray.getInt(5, -1);
        if (i4 != -1) {
            setInputType(i4);
        }
        setFocusable(typedArray.getBoolean(1, true));
        tintTypedArrayE.g();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.I = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.J = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.y = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                    SearchView searchView = SearchView.this;
                    SearchAutoComplete searchAutoComplete2 = searchView.q;
                    View view2 = searchView.y;
                    if (view2.getWidth() > 1) {
                        Resources resources = searchView.getContext().getResources();
                        int paddingLeft = searchView.s.getPaddingLeft();
                        Rect rect = new Rect();
                        boolean z = searchView.getLayoutDirection() == 1;
                        int dimensionPixelSize2 = searchView.Q ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
                        searchAutoComplete2.getDropDownBackground().getPadding(rect);
                        int i13 = rect.left;
                        searchAutoComplete2.setDropDownHorizontalOffset(z ? -i13 : paddingLeft - (i13 + dimensionPixelSize2));
                        searchAutoComplete2.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize2) - paddingLeft);
                    }
                }
            });
        }
        w(this.Q);
        t();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.q;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.h0 = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.q;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.h0 = false;
    }

    public int getImeOptions() {
        return this.q.getImeOptions();
    }

    public int getInputType() {
        return this.q.getInputType();
    }

    public int getMaxWidth() {
        return this.t0;
    }

    public CharSequence getQuery() {
        return this.q.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.V;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.g1;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.K : getContext().getText(this.g1.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.H;
    }

    public int getSuggestionRowLayout() {
        return this.G;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.S;
    }

    public final Intent j(String str, String str2, Uri uri, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.d1);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.h1;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.g1.getSearchActivity());
        return intent;
    }

    public final Intent k(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.h1;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void l() {
        SearchAutoComplete searchAutoComplete = this.q;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.Q) {
            OnCloseListener onCloseListener = this.M;
            if (onCloseListener == null || !onCloseListener.a()) {
                clearFocus();
                w(true);
            }
        }
    }

    public final boolean m(int i2) {
        String strL;
        OnSuggestionListener onSuggestionListener = this.O;
        if (onSuggestionListener != null && onSuggestionListener.b()) {
            return false;
        }
        Cursor cursor = this.S.d;
        if (cursor != null && cursor.moveToPosition(i2)) {
            Intent intentJ = null;
            try {
                try {
                    int i3 = SuggestionsAdapter.z;
                    String strL2 = SuggestionsAdapter.l(cursor, cursor.getColumnIndex("suggest_intent_action"));
                    if (strL2 == null) {
                        strL2 = this.g1.getSuggestIntentAction();
                    }
                    if (strL2 == null) {
                        strL2 = "android.intent.action.SEARCH";
                    }
                    String strL3 = SuggestionsAdapter.l(cursor, cursor.getColumnIndex("suggest_intent_data"));
                    if (strL3 == null) {
                        strL3 = this.g1.getSuggestIntentData();
                    }
                    if (strL3 != null && (strL = SuggestionsAdapter.l(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                        strL3 = strL3 + "/" + Uri.encode(strL);
                    }
                    intentJ = j(strL2, SuggestionsAdapter.l(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), strL3 == null ? null : Uri.parse(strL3), SuggestionsAdapter.l(cursor, cursor.getColumnIndex("suggest_intent_query")));
                } catch (RuntimeException unused) {
                }
            } catch (RuntimeException unused2) {
                cursor.getPosition();
            }
            if (intentJ != null) {
                try {
                    getContext().startActivity(intentJ);
                } catch (RuntimeException unused3) {
                    intentJ.toString();
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.q;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
        return true;
    }

    public final void n(int i2) {
        OnSuggestionListener onSuggestionListener = this.O;
        if (onSuggestionListener == null || !onSuggestionListener.a()) {
            Editable text = this.q.getText();
            Cursor cursor = this.S.d;
            if (cursor == null) {
                return;
            }
            if (!cursor.moveToPosition(i2)) {
                setQuery(text);
                return;
            }
            String strC = this.S.c(cursor);
            if (strC != null) {
                setQuery(strC);
            } else {
                setQuery(text);
            }
        }
    }

    public final void o(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public final void onActionViewCollapsed() {
        SearchAutoComplete searchAutoComplete = this.q;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.d1 = "";
        clearFocus();
        w(true);
        searchAutoComplete.setImeOptions(this.f1);
        this.e1 = false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public final void onActionViewExpanded() {
        if (this.e1) {
            return;
        }
        this.e1 = true;
        SearchAutoComplete searchAutoComplete = this.q;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f1 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.i1);
        post(this.j1);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.q;
            int[] iArr = this.C;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.D;
            getLocationInWindow(iArr2);
            int i6 = iArr[1] - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i7;
            int height = searchAutoComplete.getHeight() + i6;
            Rect rect = this.A;
            rect.set(i7, i6, width, height);
            int i8 = rect.left;
            int i9 = rect.right;
            int i10 = i5 - i3;
            Rect rect2 = this.B;
            rect2.set(i8, 0, i9, i10);
            UpdatableTouchDelegate updatableTouchDelegate = this.z;
            if (updatableTouchDelegate == null) {
                UpdatableTouchDelegate updatableTouchDelegate2 = new UpdatableTouchDelegate(rect2, rect, searchAutoComplete);
                this.z = updatableTouchDelegate2;
                setTouchDelegate(updatableTouchDelegate2);
            } else {
                updatableTouchDelegate.f1293b.set(rect2);
                Rect rect3 = updatableTouchDelegate.d;
                rect3.set(rect2);
                int i11 = -updatableTouchDelegate.f1295e;
                rect3.inset(i11, i11);
                updatableTouchDelegate.f1294c.set(rect);
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        if (this.R) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.t0;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.t0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.t0) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        w(savedState.d);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.R;
        return savedState;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.i1);
    }

    public final void p() {
        SearchAutoComplete searchAutoComplete = this.q;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.L;
        if (onQueryTextListener != null) {
            text.toString();
            if (onQueryTextListener.a()) {
                return;
            }
        }
        if (this.g1 != null) {
            getContext().startActivity(j("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void q() {
        SearchableInfo searchableInfo = this.g1;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(k(this.J, searchableInfo));
                }
            } else {
                Intent intent = new Intent(this.I);
                ComponentName searchActivity = searchableInfo.getSearchActivity();
                intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                getContext().startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
        }
    }

    public final void r() {
        boolean zIsEmpty = TextUtils.isEmpty(this.q.getText());
        int i2 = (!zIsEmpty || (this.Q && !this.e1)) ? 0 : 8;
        ImageView imageView = this.w;
        imageView.setVisibility(i2);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i2, Rect rect) {
        if (this.h0 || !isFocusable()) {
            return false;
        }
        if (this.R) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.q.requestFocus(i2, rect);
        if (zRequestFocus) {
            w(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        int[] iArr = this.q.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.s.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.t.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public void setAppSearchData(Bundle bundle) {
        this.h1 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            l();
            return;
        }
        w(false);
        SearchAutoComplete searchAutoComplete = this.q;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.P;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.Q == z) {
            return;
        }
        this.Q = z;
        w(z);
        t();
    }

    public void setImeOptions(int i2) {
        this.q.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.q.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.t0 = i2;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.M = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.N = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.L = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.P = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.O = onSuggestionListener;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.V = charSequence;
        t();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.W = z;
        CursorAdapter cursorAdapter = this.S;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).r = z ? 2 : 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    public void setSearchableInfo(SearchableInfo searchableInfo) {
        boolean z;
        this.g1 = searchableInfo;
        Intent intent = null;
        SearchAutoComplete searchAutoComplete = this.q;
        if (searchableInfo != null) {
            searchAutoComplete.setThreshold(searchableInfo.getSuggestThreshold());
            searchAutoComplete.setImeOptions(this.g1.getImeOptions());
            int inputType = this.g1.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= DNSSDException.UNKNOWN;
                if (this.g1.getSuggestAuthority() != null) {
                    inputType |= 589824;
                }
            }
            searchAutoComplete.setInputType(inputType);
            CursorAdapter cursorAdapter = this.S;
            if (cursorAdapter != null) {
                cursorAdapter.a(null);
            }
            if (this.g1.getSuggestAuthority() != null) {
                SuggestionsAdapter suggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.g1, this.k1);
                this.S = suggestionsAdapter;
                searchAutoComplete.setAdapter(suggestionsAdapter);
                ((SuggestionsAdapter) this.S).r = this.W ? 2 : 1;
            }
            t();
        }
        SearchableInfo searchableInfo2 = this.g1;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.g1.getVoiceSearchLaunchWebSearch()) {
                intent = this.I;
            } else if (this.g1.getVoiceSearchLaunchRecognizer()) {
                intent = this.J;
            }
            z = (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
        }
        this.b1 = z;
        if (z) {
            searchAutoComplete.setPrivateImeOptions("nm");
        }
        w(this.R);
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.T = z;
        w(this.R);
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.S = cursorAdapter;
        this.q.setAdapter(cursorAdapter);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void t() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        boolean z = this.Q;
        SearchAutoComplete searchAutoComplete = this.q;
        CharSequence charSequence2 = charSequence;
        if (z && (drawable = this.F) != null) {
            charSequence2 = charSequence;
            int textSize = (int) (((double) searchAutoComplete.getTextSize()) * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            charSequence2 = spannableStringBuilder;
        }
        charSequence2 = charSequence;
        searchAutoComplete.setHint(charSequence2);
    }

    public final void u() {
        this.t.setVisibility(((this.T || this.b1) && !this.R && (this.v.getVisibility() == 0 || this.x.getVisibility() == 0)) ? 0 : 8);
    }

    public final void v(boolean z) {
        boolean z2 = this.T;
        this.v.setVisibility((!z2 || !(z2 || this.b1) || this.R || !hasFocus() || (!z && this.b1)) ? 8 : 0);
    }

    public final void w(boolean z) {
        this.R = z;
        int i2 = 8;
        int i3 = z ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.q.getText());
        this.u.setVisibility(i3);
        v(!zIsEmpty);
        this.r.setVisibility(z ? 8 : 0);
        ImageView imageView = this.E;
        imageView.setVisibility((imageView.getDrawable() == null || this.Q) ? 8 : 0);
        r();
        if (this.b1 && !this.R && zIsEmpty) {
            this.v.setVisibility(8);
            i2 = 0;
        }
        this.x.setVisibility(i2);
        u();
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public boolean d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SearchView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" isIconified=");
            return defpackage.a.p(sb, this.d, "}");
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Boolean.valueOf(this.d));
        }

        /* JADX INFO: renamed from: androidx.appcompat.widget.SearchView$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1289f;
        public SearchView g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f1290h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Runnable f1291i;

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.f1291i = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                    if (searchAutoComplete.f1290h) {
                        ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                        searchAutoComplete.f1290h = false;
                    }
                }
            };
            this.f1289f = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i3 = configuration.screenHeightDp;
            if (i2 >= 960 && i3 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i2 < 600) {
                return (i2 < 640 || i3 < 480) ? 160 : 192;
            }
            return 192;
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f1289f <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1290h) {
                Runnable runnable = this.f1291i;
                removeCallbacks(runnable);
                post(runnable);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z, int i2, Rect rect) {
            super.onFocusChanged(z, i2, rect);
            SearchView searchView = this.g;
            searchView.w(searchView.R);
            searchView.post(searchView.i1);
            SearchAutoComplete searchAutoComplete = searchView.q;
            if (searchAutoComplete.hasFocus()) {
                Api29Impl.a(searchAutoComplete);
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.g.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.g.hasFocus() && getVisibility() == 0) {
                this.f1290h = true;
                Context context = getContext();
                int i2 = SearchView.l1;
                if (context.getResources().getConfiguration().orientation == 2) {
                    Api29Impl.b(this, 1);
                    if (enoughToFilter()) {
                        showDropDown();
                    }
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            Runnable runnable = this.f1291i;
            if (!z) {
                this.f1290h = false;
                removeCallbacks(runnable);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f1290h = true;
                    return;
                }
                this.f1290h = false;
                removeCallbacks(runnable);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.g = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f1289f = i2;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context) {
        this(context, null);
    }
}
