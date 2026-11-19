package com.vuitton.android.presentation.screen.placesearch;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ll0;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "PlaceInfoType", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class PlaceSearchActivity extends Hilt_PlaceSearchActivity {
    public static final Companion t = new Companion(null);
    public final Lazy p;
    public final Lazy q;
    public final Lazy r;
    public final ViewModelLazy s;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$Companion;", "", "", "KEY_PLACE", "Ljava/lang/String;", "KEY_PREVIOUS_PLACE", "KEY_PLACE_INFO_TYPE", "KEY_AUTOCOMPLETE_CONTEXT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, PlaceInfoType placeInfoType, AutocompleteContext autocompleteContext, String str) {
            context.getClass();
            placeInfoType.getClass();
            autocompleteContext.getClass();
            Intent intent = new Intent(context, (Class<?>) PlaceSearchActivity.class);
            intent.putExtra("PLACE_INFO_TYPE", placeInfoType);
            intent.putExtra("AUTOCOMPLETE_CONTEXT", autocompleteContext.name());
            if (str != null) {
                intent.putExtra("PREVIOUS_PLACE", str);
            }
            return intent;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;", "Ljava/io/Serializable;", "", "PLACE_DETAIL", "GEOCODING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PlaceInfoType implements Serializable {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PlaceInfoType[] $VALUES;
        public static final PlaceInfoType GEOCODING;
        public static final PlaceInfoType PLACE_DETAIL;

        static {
            PlaceInfoType placeInfoType = new PlaceInfoType("PLACE_DETAIL", 0);
            PLACE_DETAIL = placeInfoType;
            PlaceInfoType placeInfoType2 = new PlaceInfoType("GEOCODING", 1);
            GEOCODING = placeInfoType2;
            PlaceInfoType[] placeInfoTypeArr = {placeInfoType, placeInfoType2};
            $VALUES = placeInfoTypeArr;
            $ENTRIES = EnumEntriesKt.a(placeInfoTypeArr);
        }

        public static PlaceInfoType valueOf(String str) {
            return (PlaceInfoType) Enum.valueOf(PlaceInfoType.class, str);
        }

        public static PlaceInfoType[] values() {
            return (PlaceInfoType[]) $VALUES.clone();
        }
    }

    public PlaceSearchActivity() {
        final int i2 = 0;
        this.p = LazyKt.b(new Function0(this) { // from class: io0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlaceSearchActivity f71183c;

            {
                this.f71183c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String stringExtra;
                int i3 = i2;
                PlaceSearchActivity placeSearchActivity = this.f71183c;
                switch (i3) {
                    case 0:
                        return PlaceSearchActivity.H(placeSearchActivity);
                    case 1:
                        PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
                        Intent intent = placeSearchActivity.getIntent();
                        if (intent != null) {
                            return intent.getStringExtra("PREVIOUS_PLACE");
                        }
                        return null;
                    default:
                        PlaceSearchActivity.Companion companion2 = PlaceSearchActivity.t;
                        Intent intent2 = placeSearchActivity.getIntent();
                        if (intent2 == null || (stringExtra = intent2.getStringExtra("AUTOCOMPLETE_CONTEXT")) == null) {
                            return null;
                        }
                        return AutocompleteContext.valueOf(stringExtra);
                }
            }
        });
        final int i3 = 1;
        this.q = LazyKt.b(new Function0(this) { // from class: io0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlaceSearchActivity f71183c;

            {
                this.f71183c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String stringExtra;
                int i4 = i3;
                PlaceSearchActivity placeSearchActivity = this.f71183c;
                switch (i4) {
                    case 0:
                        return PlaceSearchActivity.H(placeSearchActivity);
                    case 1:
                        PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
                        Intent intent = placeSearchActivity.getIntent();
                        if (intent != null) {
                            return intent.getStringExtra("PREVIOUS_PLACE");
                        }
                        return null;
                    default:
                        PlaceSearchActivity.Companion companion2 = PlaceSearchActivity.t;
                        Intent intent2 = placeSearchActivity.getIntent();
                        if (intent2 == null || (stringExtra = intent2.getStringExtra("AUTOCOMPLETE_CONTEXT")) == null) {
                            return null;
                        }
                        return AutocompleteContext.valueOf(stringExtra);
                }
            }
        });
        final int i4 = 2;
        this.r = LazyKt.b(new Function0(this) { // from class: io0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PlaceSearchActivity f71183c;

            {
                this.f71183c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String stringExtra;
                int i5 = i4;
                PlaceSearchActivity placeSearchActivity = this.f71183c;
                switch (i5) {
                    case 0:
                        return PlaceSearchActivity.H(placeSearchActivity);
                    case 1:
                        PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
                        Intent intent = placeSearchActivity.getIntent();
                        if (intent != null) {
                            return intent.getStringExtra("PREVIOUS_PLACE");
                        }
                        return null;
                    default:
                        PlaceSearchActivity.Companion companion2 = PlaceSearchActivity.t;
                        Intent intent2 = placeSearchActivity.getIntent();
                        if (intent2 == null || (stringExtra = intent2.getStringExtra("AUTOCOMPLETE_CONTEXT")) == null) {
                            return null;
                        }
                        return AutocompleteContext.valueOf(stringExtra);
                }
            }
        });
        final Function0 function0 = null;
        this.s = new ViewModelLazy(Reflection.f71922a.b(PlaceSearchViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static PlaceInfoType H(PlaceSearchActivity placeSearchActivity) {
        Object serializableExtra;
        Intent intent = placeSearchActivity.getIntent();
        if (intent == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("PLACE_INFO_TYPE", PlaceInfoType.class);
        } else {
            Object serializableExtra2 = intent.getSerializableExtra("PLACE_INFO_TYPE");
            serializableExtra = (PlaceInfoType) (serializableExtra2 instanceof PlaceInfoType ? serializableExtra2 : null);
        }
        return (PlaceInfoType) serializableExtra;
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(856676764, true, new ll0(this, 2)));
    }
}
