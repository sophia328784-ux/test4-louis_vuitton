package com.linecorp.linesdk.openchat.ui;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.linecorp.linesdk.LineApiResponse;
import com.linecorp.linesdk.api.LineApiClient;
import com.linecorp.linesdk.api.LineApiClientBuilder;
import com.linecorp.linesdk.auth.internal.LineAppVersion;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.v40;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Companion", "CreateOpenChatStep", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CreateOpenChatActivity extends AppCompatActivity {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public OpenChatInfoViewModel f36263j;
    public final LinkedHashMap l = new LinkedHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Lazy f36262i = LazyKt.b(new Function0<LineApiClient>() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$lineApiClient$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            CreateOpenChatActivity createOpenChatActivity = this.f36268c;
            String stringExtra = createOpenChatActivity.getIntent().getStringExtra("arg_channel_id");
            if (stringExtra == null) {
                stringExtra = "";
            }
            LineApiClient lineApiClientBuild = new LineApiClientBuilder(createOpenChatActivity, stringExtra).build();
            lineApiClientBuild.getClass();
            return lineApiClientBuild;
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CreateOpenChatStep f36264k = CreateOpenChatStep.ChatroomInfo;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;", "", "", "ARG_CHANNEL_ID", "Ljava/lang/String;", "ARG_ERROR_RESULT", "ARG_OPEN_CHATROOM_INFO", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;", "", "ChatroomInfo", "UserProfile", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class CreateOpenChatStep {
        private static final /* synthetic */ CreateOpenChatStep[] $VALUES;
        public static final CreateOpenChatStep ChatroomInfo;
        public static final CreateOpenChatStep UserProfile;

        static {
            CreateOpenChatStep createOpenChatStep = new CreateOpenChatStep("ChatroomInfo", 0);
            ChatroomInfo = createOpenChatStep;
            CreateOpenChatStep createOpenChatStep2 = new CreateOpenChatStep("UserProfile", 1);
            UserProfile = createOpenChatStep2;
            $VALUES = new CreateOpenChatStep[]{createOpenChatStep, createOpenChatStep2};
        }

        public static CreateOpenChatStep valueOf(String str) {
            return (CreateOpenChatStep) Enum.valueOf(CreateOpenChatStep.class, str);
        }

        public static CreateOpenChatStep[] values() {
            return (CreateOpenChatStep[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f36265a;

        static {
            int[] iArr = new int[CreateOpenChatStep.values().length];
            try {
                iArr[CreateOpenChatStep.ChatroomInfo.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CreateOpenChatStep.UserProfile.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f36265a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_create_open_chat);
        final int i2 = 0;
        final SharedPreferences sharedPreferences = getSharedPreferences("openchat", 0);
        OpenChatInfoViewModel openChatInfoViewModel = (OpenChatInfoViewModel) new ViewModelProvider(this, new ViewModelProvider.Factory() { // from class: com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity$initViewModel$1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public final ViewModel create(Class cls) {
                cls.getClass();
                if (!cls.isAssignableFrom(OpenChatInfoViewModel.class)) {
                    md.k("Unknown ViewModel class");
                    return null;
                }
                SharedPreferences sharedPreferences2 = sharedPreferences;
                sharedPreferences2.getClass();
                return new OpenChatInfoViewModel(sharedPreferences2, (LineApiClient) this.f36262i.getF71699b());
            }
        }).a(Reflection.f71922a.b(OpenChatInfoViewModel.class));
        this.f36263j = openChatInfoViewModel;
        openChatInfoViewModel.f36274h.observe(this, new Observer(this) { // from class: yq

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CreateOpenChatActivity f81407c;

            {
                this.f81407c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i3 = i2;
                final int i4 = 0;
                final CreateOpenChatActivity createOpenChatActivity = this.f81407c;
                switch (i3) {
                    case 0:
                        int i5 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_open_chatroom_info", (OpenChatRoomInfo) obj));
                        createOpenChatActivity.finish();
                        break;
                    case 1:
                        int i6 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_error_result", ((LineApiResponse) obj).f36064c));
                        createOpenChatActivity.finish();
                        break;
                    case 2:
                        Boolean bool = (Boolean) obj;
                        int i7 = CreateOpenChatActivity.m;
                        Integer numValueOf = Integer.valueOf(R.id.progressBar);
                        LinkedHashMap linkedHashMap = createOpenChatActivity.l;
                        View viewFindViewById = (View) linkedHashMap.get(numValueOf);
                        if (viewFindViewById == null) {
                            viewFindViewById = createOpenChatActivity.findViewById(R.id.progressBar);
                            if (viewFindViewById != null) {
                                linkedHashMap.put(numValueOf, viewFindViewById);
                            } else {
                                viewFindViewById = null;
                            }
                        }
                        ProgressBar progressBar = (ProgressBar) viewFindViewById;
                        bool.getClass();
                        progressBar.setVisibility(bool.booleanValue() ? 0 : 8);
                        break;
                    default:
                        Boolean bool2 = (Boolean) obj;
                        int i8 = CreateOpenChatActivity.m;
                        bool2.getClass();
                        if (bool2.booleanValue()) {
                            final int i9 = 1;
                            boolean z = LineAppVersion.a(createOpenChatActivity) != null;
                            AlertDialog.Builder builder = new AlertDialog.Builder(createOpenChatActivity);
                            AlertController.AlertParams alertParams = builder.f810a;
                            alertParams.g = alertParams.f796a.getText(R.string.openchat_not_agree_with_terms);
                            alertParams.n = new DialogInterface.OnDismissListener() { // from class: zq
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i10 = CreateOpenChatActivity.m;
                                    createOpenChatActivity.finish();
                                }
                            };
                            if (z) {
                                builder.setPositiveButton(R.string.open_line, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i10) {
                                        int i11 = i4;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i11) {
                                            case 0:
                                                int i12 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i10);
                                                break;
                                            case 1:
                                                int i13 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i10);
                                                break;
                                            default:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i10);
                                                break;
                                        }
                                    }
                                });
                                builder.setNegativeButton(R.string.common_cancel, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i10) {
                                        int i11 = i9;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i11) {
                                            case 0:
                                                int i12 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i10);
                                                break;
                                            case 1:
                                                int i13 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i10);
                                                break;
                                            default:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i10);
                                                break;
                                        }
                                    }
                                });
                            } else {
                                final int i10 = 2;
                                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i11) {
                                        int i12 = i10;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i12) {
                                            case 0:
                                                int i13 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                            case 1:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                            default:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                        }
                                    }
                                });
                            }
                            builder.g();
                        }
                        break;
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel2 = this.f36263j;
        if (openChatInfoViewModel2 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        final int i3 = 1;
        openChatInfoViewModel2.f36275i.observe(this, new Observer(this) { // from class: yq

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CreateOpenChatActivity f81407c;

            {
                this.f81407c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i4 = i3;
                final int i5 = 0;
                final CreateOpenChatActivity createOpenChatActivity = this.f81407c;
                switch (i4) {
                    case 0:
                        int i6 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_open_chatroom_info", (OpenChatRoomInfo) obj));
                        createOpenChatActivity.finish();
                        break;
                    case 1:
                        int i7 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_error_result", ((LineApiResponse) obj).f36064c));
                        createOpenChatActivity.finish();
                        break;
                    case 2:
                        Boolean bool = (Boolean) obj;
                        int i8 = CreateOpenChatActivity.m;
                        Integer numValueOf = Integer.valueOf(R.id.progressBar);
                        LinkedHashMap linkedHashMap = createOpenChatActivity.l;
                        View viewFindViewById = (View) linkedHashMap.get(numValueOf);
                        if (viewFindViewById == null) {
                            viewFindViewById = createOpenChatActivity.findViewById(R.id.progressBar);
                            if (viewFindViewById != null) {
                                linkedHashMap.put(numValueOf, viewFindViewById);
                            } else {
                                viewFindViewById = null;
                            }
                        }
                        ProgressBar progressBar = (ProgressBar) viewFindViewById;
                        bool.getClass();
                        progressBar.setVisibility(bool.booleanValue() ? 0 : 8);
                        break;
                    default:
                        Boolean bool2 = (Boolean) obj;
                        int i9 = CreateOpenChatActivity.m;
                        bool2.getClass();
                        if (bool2.booleanValue()) {
                            final int i10 = 1;
                            boolean z = LineAppVersion.a(createOpenChatActivity) != null;
                            AlertDialog.Builder builder = new AlertDialog.Builder(createOpenChatActivity);
                            AlertController.AlertParams alertParams = builder.f810a;
                            alertParams.g = alertParams.f796a.getText(R.string.openchat_not_agree_with_terms);
                            alertParams.n = new DialogInterface.OnDismissListener() { // from class: zq
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i11 = CreateOpenChatActivity.m;
                                    createOpenChatActivity.finish();
                                }
                            };
                            if (z) {
                                builder.setPositiveButton(R.string.open_line, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i11) {
                                        int i12 = i5;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i12) {
                                            case 0:
                                                int i13 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                            case 1:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                            default:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                        }
                                    }
                                });
                                builder.setNegativeButton(R.string.common_cancel, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i11) {
                                        int i12 = i10;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i12) {
                                            case 0:
                                                int i13 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                            case 1:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                            default:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i11);
                                                break;
                                        }
                                    }
                                });
                            } else {
                                final int i11 = 2;
                                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i12) {
                                        int i13 = i11;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i13) {
                                            case 0:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                            case 1:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                            default:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                        }
                                    }
                                });
                            }
                            builder.g();
                        }
                        break;
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel3 = this.f36263j;
        if (openChatInfoViewModel3 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        final int i4 = 2;
        openChatInfoViewModel3.f36276j.observe(this, new Observer(this) { // from class: yq

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CreateOpenChatActivity f81407c;

            {
                this.f81407c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i5 = i4;
                final int i6 = 0;
                final CreateOpenChatActivity createOpenChatActivity = this.f81407c;
                switch (i5) {
                    case 0:
                        int i7 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_open_chatroom_info", (OpenChatRoomInfo) obj));
                        createOpenChatActivity.finish();
                        break;
                    case 1:
                        int i8 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_error_result", ((LineApiResponse) obj).f36064c));
                        createOpenChatActivity.finish();
                        break;
                    case 2:
                        Boolean bool = (Boolean) obj;
                        int i9 = CreateOpenChatActivity.m;
                        Integer numValueOf = Integer.valueOf(R.id.progressBar);
                        LinkedHashMap linkedHashMap = createOpenChatActivity.l;
                        View viewFindViewById = (View) linkedHashMap.get(numValueOf);
                        if (viewFindViewById == null) {
                            viewFindViewById = createOpenChatActivity.findViewById(R.id.progressBar);
                            if (viewFindViewById != null) {
                                linkedHashMap.put(numValueOf, viewFindViewById);
                            } else {
                                viewFindViewById = null;
                            }
                        }
                        ProgressBar progressBar = (ProgressBar) viewFindViewById;
                        bool.getClass();
                        progressBar.setVisibility(bool.booleanValue() ? 0 : 8);
                        break;
                    default:
                        Boolean bool2 = (Boolean) obj;
                        int i10 = CreateOpenChatActivity.m;
                        bool2.getClass();
                        if (bool2.booleanValue()) {
                            final int i11 = 1;
                            boolean z = LineAppVersion.a(createOpenChatActivity) != null;
                            AlertDialog.Builder builder = new AlertDialog.Builder(createOpenChatActivity);
                            AlertController.AlertParams alertParams = builder.f810a;
                            alertParams.g = alertParams.f796a.getText(R.string.openchat_not_agree_with_terms);
                            alertParams.n = new DialogInterface.OnDismissListener() { // from class: zq
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i12 = CreateOpenChatActivity.m;
                                    createOpenChatActivity.finish();
                                }
                            };
                            if (z) {
                                builder.setPositiveButton(R.string.open_line, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i12) {
                                        int i13 = i6;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i13) {
                                            case 0:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                            case 1:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                            default:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                        }
                                    }
                                });
                                builder.setNegativeButton(R.string.common_cancel, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i12) {
                                        int i13 = i11;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i13) {
                                            case 0:
                                                int i14 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                            case 1:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                            default:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i12);
                                                break;
                                        }
                                    }
                                });
                            } else {
                                final int i12 = 2;
                                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i13) {
                                        int i14 = i12;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i14) {
                                            case 0:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                            case 1:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                            default:
                                                int i17 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                        }
                                    }
                                });
                            }
                            builder.g();
                        }
                        break;
                }
            }
        });
        OpenChatInfoViewModel openChatInfoViewModel4 = this.f36263j;
        if (openChatInfoViewModel4 == null) {
            Intrinsics.h("viewModel");
            throw null;
        }
        final int i5 = 3;
        openChatInfoViewModel4.f36277k.observe(this, new Observer(this) { // from class: yq

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CreateOpenChatActivity f81407c;

            {
                this.f81407c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i6 = i5;
                final int i7 = 0;
                final CreateOpenChatActivity createOpenChatActivity = this.f81407c;
                switch (i6) {
                    case 0:
                        int i8 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_open_chatroom_info", (OpenChatRoomInfo) obj));
                        createOpenChatActivity.finish();
                        break;
                    case 1:
                        int i9 = CreateOpenChatActivity.m;
                        createOpenChatActivity.setResult(-1, new Intent().putExtra("arg_error_result", ((LineApiResponse) obj).f36064c));
                        createOpenChatActivity.finish();
                        break;
                    case 2:
                        Boolean bool = (Boolean) obj;
                        int i10 = CreateOpenChatActivity.m;
                        Integer numValueOf = Integer.valueOf(R.id.progressBar);
                        LinkedHashMap linkedHashMap = createOpenChatActivity.l;
                        View viewFindViewById = (View) linkedHashMap.get(numValueOf);
                        if (viewFindViewById == null) {
                            viewFindViewById = createOpenChatActivity.findViewById(R.id.progressBar);
                            if (viewFindViewById != null) {
                                linkedHashMap.put(numValueOf, viewFindViewById);
                            } else {
                                viewFindViewById = null;
                            }
                        }
                        ProgressBar progressBar = (ProgressBar) viewFindViewById;
                        bool.getClass();
                        progressBar.setVisibility(bool.booleanValue() ? 0 : 8);
                        break;
                    default:
                        Boolean bool2 = (Boolean) obj;
                        int i11 = CreateOpenChatActivity.m;
                        bool2.getClass();
                        if (bool2.booleanValue()) {
                            final int i12 = 1;
                            boolean z = LineAppVersion.a(createOpenChatActivity) != null;
                            AlertDialog.Builder builder = new AlertDialog.Builder(createOpenChatActivity);
                            AlertController.AlertParams alertParams = builder.f810a;
                            alertParams.g = alertParams.f796a.getText(R.string.openchat_not_agree_with_terms);
                            alertParams.n = new DialogInterface.OnDismissListener() { // from class: zq
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i13 = CreateOpenChatActivity.m;
                                    createOpenChatActivity.finish();
                                }
                            };
                            if (z) {
                                builder.setPositiveButton(R.string.open_line, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i13) {
                                        int i14 = i7;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i14) {
                                            case 0:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                            case 1:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                            default:
                                                int i17 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                        }
                                    }
                                });
                                builder.setNegativeButton(R.string.common_cancel, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i13) {
                                        int i14 = i12;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i14) {
                                            case 0:
                                                int i15 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                            case 1:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                            default:
                                                int i17 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i13);
                                                break;
                                        }
                                    }
                                });
                            } else {
                                final int i13 = 2;
                                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: ar
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i14) {
                                        int i15 = i13;
                                        CreateOpenChatActivity createOpenChatActivity2 = createOpenChatActivity;
                                        switch (i15) {
                                            case 0:
                                                int i16 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.startActivity(createOpenChatActivity2.getPackageManager().getLaunchIntentForPackage("jp.naver.line.android"));
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i14);
                                                break;
                                            case 1:
                                                int i17 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i14);
                                                break;
                                            default:
                                                int i18 = CreateOpenChatActivity.m;
                                                createOpenChatActivity2.finish();
                                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i14);
                                                break;
                                        }
                                    }
                                });
                            }
                            builder.g();
                        }
                        break;
                }
            }
        });
        v(this.f36264k, false);
    }

    public final int v(CreateOpenChatStep createOpenChatStep, boolean z) {
        Fragment openChatInfoFragment;
        FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
        if (z) {
            fragmentTransactionD.d(createOpenChatStep.name());
        }
        int i2 = WhenMappings.f36265a[createOpenChatStep.ordinal()];
        if (i2 == 1) {
            OpenChatInfoFragment.D.getClass();
            openChatInfoFragment = new OpenChatInfoFragment();
        } else {
            if (i2 != 2) {
                v40.g();
                return 0;
            }
            ProfileInfoFragment.D.getClass();
            openChatInfoFragment = new ProfileInfoFragment();
        }
        fragmentTransactionD.m(R.id.container, openChatInfoFragment, null);
        return fragmentTransactionD.e();
    }
}
