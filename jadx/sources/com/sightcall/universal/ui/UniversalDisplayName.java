package com.sightcall.universal.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LanguagesKt;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.universal.R;
import com.sightcall.universal.displayname.DisplayNameAndLiveTranslation;
import com.sightcall.universal.model.DisplayMode;
import com.sightcall.universal.ui.UniversalDisplayName;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalDisplayName extends LinearLayout {
    private LinearLayout displayName;
    private EditText editText;
    private Spinner languageSpinner;
    private Button ok;
    private LinearLayout selectLanguage;
    private Button skip;

    public interface DisplayNameCallback {
        void onResult(String str, Language language);
    }

    public UniversalDisplayName(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        View.inflate(context, R.layout.universal_activity_displayname, this);
        this.displayName = (LinearLayout) findViewById(R.id.displayname);
        this.selectLanguage = (LinearLayout) findViewById(R.id.livetranslation_language);
        this.languageSpinner = (Spinner) findViewById(R.id.universal_spinner_language);
        this.editText = (EditText) findViewById(R.id.universal_displayame_edit);
        this.ok = (Button) findViewById(R.id.universal_displayname_button_ok);
        Button button = (Button) findViewById(R.id.universal_displayname_button_skip);
        this.skip = button;
        button.setBackgroundColor(getResources().getColor(android.R.color.transparent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$setup$-Lcom-sightcall-universal-displayname-DisplayNameAndLiveTranslation-Ljava-lang-String-Lcom-sightcall-universal-ui-UniversalDisplayName$DisplayNameCallback--V, reason: not valid java name */
    public static /* synthetic */ void m73xab2b9013(UniversalDisplayName universalDisplayName, String str, LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391, List list, boolean z, DisplayNameCallback displayNameCallback, View view) {
        Callback.n(view);
        try {
            universalDisplayName.lambda$setup$0(str, languageISO6391, list, z, displayNameCallback, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$1$setup$-Lcom-sightcall-universal-displayname-DisplayNameAndLiveTranslation-Ljava-lang-String-Lcom-sightcall-universal-ui-UniversalDisplayName$DisplayNameCallback--V, reason: not valid java name */
    public static /* synthetic */ void m74x71da5394(UniversalDisplayName universalDisplayName, LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391, List list, boolean z, DisplayNameCallback displayNameCallback, View view) {
        Callback.n(view);
        try {
            universalDisplayName.lambda$setup$1(languageISO6391, list, z, displayNameCallback, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    private /* synthetic */ void lambda$setup$0(String str, LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391, List list, boolean z, DisplayNameCallback displayNameCallback, View view) {
        String string = this.editText.getText().toString();
        if (DisplayMode.Mandatory.INSTANCE.getValue().equals(str) && TextUtils.isEmpty(string)) {
            this.editText.setError("");
        } else if (userSelectedALanguage(languageISO6391, list, z)) {
            displayNameCallback.onResult(string, (Language) list.get(this.languageSpinner.getSelectedItemPosition()));
        } else {
            displayNameCallback.onResult(string, null);
        }
    }

    private /* synthetic */ void lambda$setup$1(LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391, List list, boolean z, DisplayNameCallback displayNameCallback, View view) {
        if (userSelectedALanguage(languageISO6391, list, z)) {
            displayNameCallback.onResult("", (Language) list.get(this.languageSpinner.getSelectedItemPosition()));
        } else {
            displayNameCallback.onResult("", null);
        }
    }

    private boolean userSelectedALanguage(LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391, List<Language> list, boolean z) {
        return (languageISO6391 == null || list == null || !z) ? false : true;
    }

    public void setup(DisplayNameAndLiveTranslation displayNameAndLiveTranslation, final String str, final DisplayNameCallback displayNameCallback) {
        if (DisplayMode.Mandatory.INSTANCE.getValue().equals(str)) {
            this.skip.setVisibility(8);
        }
        if (str == null) {
            this.skip.setVisibility(8);
            this.displayName.setVisibility(8);
        }
        final LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391 = displayNameAndLiveTranslation.selectedLanguage;
        final List<Language> list = displayNameAndLiveTranslation.languages;
        final boolean z = displayNameAndLiveTranslation.shouldConfirmLanguage;
        if (languageISO6391 == null || list == null || !z) {
            this.selectLanguage.setVisibility(8);
        } else {
            ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), android.R.layout.simple_spinner_item, LanguagesKt.names(list));
            arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            this.languageSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
            this.languageSpinner.setSelection(LanguagesKt.getIndexOf(list, languageISO6391.getValue()));
            this.selectLanguage.setVisibility(0);
        }
        this.ok.setOnClickListener(new View.OnClickListener() { // from class: c51
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalDisplayName.m73xab2b9013(this.f21067b, str, languageISO6391, list, z, displayNameCallback, view);
            }
        });
        this.skip.setOnClickListener(new View.OnClickListener() { // from class: d51
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UniversalDisplayName.m74x71da5394(this.f68444b, languageISO6391, list, z, displayNameCallback, view);
            }
        });
    }

    public UniversalDisplayName(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public UniversalDisplayName(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context);
    }
}
