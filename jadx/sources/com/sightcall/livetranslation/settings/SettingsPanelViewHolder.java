package com.sightcall.livetranslation.settings;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.jakewharton.rxbinding4.view.RxView;
import com.jakewharton.rxbinding4.widget.RxCompoundButton;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusViewHolder;
import com.sightcall.libraries.archi.nucleus.NucleusViewHolderKt;
import com.sightcall.livetranslation.R;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import defpackage.v40;
import defpackage.xo0;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0003`\u0019X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR$\u0010\u001c\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001e0\u001dj\u0002` X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;", "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;", "rootView", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", "close", "Landroid/view/View;", "language", "Landroid/widget/TextView;", "switch", "Landroidx/appcompat/widget/SwitchCompat;", "openHistory", "smallSize", "mediumSize", "largeSize", "skipCheckedChanges", "", "render", "Lkotlin/Function1;", "", "Lcom/sightcall/libraries/archi/nucleus/Renderer;", "getRender", "()Lkotlin/jvm/functions/Function1;", "dispatcher", "", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;", "getDispatcher", "()Ljava/util/List;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SettingsPanelViewHolder extends NucleusViewHolder<ConstraintLayout, SettingsPanelInteractor.State> {
    private final View close;
    private final List<Observable<Action>> dispatcher;
    private final TextView language;
    private final View largeSize;
    private final View mediumSize;
    private final View openHistory;
    private final Function1<SettingsPanelInteractor.State, Unit> render;
    private boolean skipCheckedChanges;
    private final View smallSize;
    private final SwitchCompat switch;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LiveTranslationSettings.Enabled.TranscriptHistory.values().length];
            try {
                iArr[LiveTranslationSettings.Enabled.TranscriptHistory.Enabled.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LiveTranslationSettings.Enabled.TranscriptHistory.Disabled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r12v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View] */
    public SettingsPanelViewHolder(ViewGroup viewGroup, NucleusInteractor<SettingsPanelInteractor.State> nucleusInteractor) {
        super(viewGroup, R.layout.settings_panel, nucleusInteractor);
        viewGroup.getClass();
        nucleusInteractor.getClass();
        ?? FindViewById = findViewById(R.id.close);
        this.close = FindViewById;
        this.language = (TextView) findViewById(R.id.live_translation_language_value);
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.enable_translation);
        this.switch = switchCompat;
        ?? FindViewById2 = findViewById(R.id.open_history);
        this.openHistory = FindViewById2;
        ?? FindViewById3 = findViewById(R.id.live_translation_size_small);
        this.smallSize = FindViewById3;
        ?? FindViewById4 = findViewById(R.id.live_translation_size_medium);
        this.mediumSize = FindViewById4;
        ?? FindViewById5 = findViewById(R.id.live_translation_size_large);
        this.largeSize = FindViewById5;
        this.render = new xo0(this, 19);
        Observable map = RxView.a(FindViewById).map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Unit unit) {
                unit.getClass();
                return SettingsPanelInteractor.Close.INSTANCE;
            }
        });
        map.getClass();
        Observable map2 = RxView.a(FindViewById2).map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$2
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Unit unit) {
                unit.getClass();
                return SettingsPanelInteractor.ShowHistory.INSTANCE;
            }
        });
        map2.getClass();
        Observable map3 = RxCompoundButton.a(switchCompat).skip(1L).filter(new Predicate() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$3
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Boolean bool) {
                bool.getClass();
                return !this.this$0.skipCheckedChanges;
            }
        }).map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$4
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Boolean bool) {
                bool.getClass();
                return bool.booleanValue() ? SettingsPanelInteractor.Show.INSTANCE : SettingsPanelInteractor.Hide.INSTANCE;
            }
        });
        map3.getClass();
        Observable map4 = RxView.a(FindViewById3).map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$5
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Unit unit) {
                unit.getClass();
                return SettingsPanelInteractor.SmallSizeSelected.INSTANCE;
            }
        });
        map4.getClass();
        Observable map5 = RxView.a(FindViewById4).map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$6
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Unit unit) {
                unit.getClass();
                return SettingsPanelInteractor.MediumSizeSelected.INSTANCE;
            }
        });
        map5.getClass();
        Observable map6 = RxView.a(FindViewById5).map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelViewHolder$dispatcher$7
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(Unit unit) {
                unit.getClass();
                return SettingsPanelInteractor.LargeSizeSelected.INSTANCE;
            }
        });
        map6.getClass();
        this.dispatcher = NucleusViewHolderKt.dispatch(map, map2, map3, map4, map5, map6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit render$lambda$0(SettingsPanelViewHolder settingsPanelViewHolder, SettingsPanelInteractor.State state) {
        String name;
        int i2;
        state.getClass();
        TextView textView = settingsPanelViewHolder.language;
        Language selectedLanguage = state.getSelectedLanguage();
        if (selectedLanguage == null || (name = selectedLanguage.getName()) == null) {
            name = "";
        }
        textView.setText(name);
        SwitchCompat switchCompat = settingsPanelViewHolder.switch;
        if (switchCompat.isChecked() != state.getShow()) {
            settingsPanelViewHolder.skipCheckedChanges = true;
            switchCompat.setChecked(state.getShow());
            switchCompat.jumpDrawablesToCurrentState();
            settingsPanelViewHolder.skipCheckedChanges = false;
        }
        View view = settingsPanelViewHolder.openHistory;
        int i3 = WhenMappings.$EnumSwitchMapping$0[state.getTranscriptHistory().ordinal()];
        if (i3 == 1) {
            i2 = 0;
        } else {
            if (i3 != 2) {
                v40.g();
                return null;
            }
            i2 = 8;
        }
        view.setVisibility(i2);
        settingsPanelViewHolder.smallSize.setSelected(state.getFontSize() == LiveTranslationSettings.Enabled.FontSize.Small);
        settingsPanelViewHolder.mediumSize.setSelected(state.getFontSize() == LiveTranslationSettings.Enabled.FontSize.Medium);
        settingsPanelViewHolder.largeSize.setSelected(state.getFontSize() == LiveTranslationSettings.Enabled.FontSize.Large);
        return Unit.f71739a;
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusViewHolder
    public List<Observable<Action>> getDispatcher() {
        return this.dispatcher;
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusViewHolder
    public Function1<SettingsPanelInteractor.State, Unit> getRender() {
        return this.render;
    }
}
