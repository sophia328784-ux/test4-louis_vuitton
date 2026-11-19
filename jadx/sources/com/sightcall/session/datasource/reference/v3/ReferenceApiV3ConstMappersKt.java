package com.sightcall.session.datasource.reference.v3;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.sightcall.pratik.BuildConfig;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.session.Reference;
import com.sightcall.session.datasource.reference.v3.startup.ReferenceStartupRequestEntity;
import defpackage.v40;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0000\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\bH\u0000\u001a\u0010\u0010\t\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\u000bH\u0000\u001a\u0010\u0010\f\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u000eH\u0000\u001a \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0000¨\u0006\u0017"}, d2 = {"toCallDistribution", "Lcom/sightcall/session/Reference$CallDistribution;", "Lcom/sightcall/session/datasource/reference/v3/CallDistribution;", "toUserRole", "Lcom/sightcall/session/Reference$UserRole;", "Lcom/sightcall/session/datasource/reference/v3/UserRole;", "toButton", "Lcom/sightcall/session/Reference$Button;", "Lcom/sightcall/session/datasource/reference/v3/Role;", "toCameraSide", "Lcom/sightcall/session/Reference$CameraSide;", "Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;", "toVideoProfile", "Lcom/sightcall/session/Reference$VideoProfile;", "Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;", "create", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "mobileSolution", "", "session_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ReferenceApiV3ConstMappersKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;

        static {
            int[] iArr = new int[CallDistribution.values().length];
            try {
                iArr[CallDistribution.Acd.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CallDistribution.Code.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CallDistribution.Direct.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[UserRole.values().length];
            try {
                iArr2[UserRole.Guest.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[UserRole.Attendee.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Role.values().length];
            try {
                iArr3[Role.EraseDrawing.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[Role.HangupCall.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[Role.OpenChat.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[Role.PauseCamera.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[Role.ShareMedia.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[Role.StartCamera.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[Role.StartMicro.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[Role.StartScreencast.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[Role.StartTorch.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[Role.SwitchCamera.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[Role.SwitchSpeaker.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[StartupCameraSide.values().length];
            try {
                iArr4[StartupCameraSide.Front.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr4[StartupCameraSide.Rear.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[StartupVideoProfile.values().length];
            try {
                iArr5[StartupVideoProfile.Sd.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr5[StartupVideoProfile.Md.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            $EnumSwitchMapping$4 = iArr5;
        }
    }

    public static final ReferenceStartupRequestEntity create(Context context, Uri uri, String str) {
        context.getClass();
        uri.getClass();
        str.getClass();
        String string = uri.toString();
        string.getClass();
        String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
        String value = (InstantAppWrapper.isInstantApp(context) ? SoftwareType.InstantApp.INSTANCE : SoftwareType.FullApp.INSTANCE).getValue();
        String packageName = context.getPackageName();
        packageName.getClass();
        String strAppVersionName = ContextExtensionsKt.appVersionName(context);
        String str2 = Build.MODEL;
        str2.getClass();
        return new ReferenceStartupRequestEntity(new ReferenceStartupRequestEntity.Data(new ReferenceStartupRequestEntity.Data.Attributes(string, ReferenceApiV3ConstKt.OS_NAME, strValueOf, value, packageName, strAppVersionName, ReferenceApiV3ConstKt.Device_TYPE, str2, BuildConfig.SDK_VERSION, str, null, 1024, null)));
    }

    public static final Reference.Button toButton(Role role) {
        role.getClass();
        switch (WhenMappings.$EnumSwitchMapping$2[role.ordinal()]) {
            case 1:
                return Reference.Button.EraseDrawing.INSTANCE;
            case 2:
                return Reference.Button.HangupCall.INSTANCE;
            case 3:
                return Reference.Button.OpenChat.INSTANCE;
            case 4:
                return Reference.Button.PauseCamera.INSTANCE;
            case 5:
                return Reference.Button.ShareMedia.INSTANCE;
            case 6:
                return Reference.Button.StartCamera.INSTANCE;
            case 7:
                return Reference.Button.StartMicro.INSTANCE;
            case 8:
                return Reference.Button.StartScreencast.INSTANCE;
            case 9:
                return Reference.Button.StartTorch.INSTANCE;
            case 10:
                return Reference.Button.SwitchCamera.INSTANCE;
            case 11:
                return Reference.Button.SwitchSpeaker.INSTANCE;
            default:
                v40.g();
                return null;
        }
    }

    public static final Reference.CallDistribution toCallDistribution(CallDistribution callDistribution) {
        int i2 = callDistribution == null ? -1 : WhenMappings.$EnumSwitchMapping$0[callDistribution.ordinal()];
        if (i2 == 1) {
            return Reference.CallDistribution.Acd.INSTANCE;
        }
        if (i2 == 2) {
            return Reference.CallDistribution.Code.INSTANCE;
        }
        if (i2 != 3) {
            return null;
        }
        return Reference.CallDistribution.Direct.INSTANCE;
    }

    public static final Reference.CameraSide toCameraSide(StartupCameraSide startupCameraSide) {
        int i2 = startupCameraSide == null ? -1 : WhenMappings.$EnumSwitchMapping$3[startupCameraSide.ordinal()];
        if (i2 == -1) {
            return null;
        }
        if (i2 == 1) {
            return Reference.CameraSide.Front.INSTANCE;
        }
        if (i2 == 2) {
            return Reference.CameraSide.Back.INSTANCE;
        }
        v40.g();
        return null;
    }

    public static final Reference.UserRole toUserRole(UserRole userRole) {
        userRole.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$1[userRole.ordinal()];
        if (i2 == 1) {
            return Reference.UserRole.Guest.INSTANCE;
        }
        if (i2 == 2) {
            return Reference.UserRole.Attendee.INSTANCE;
        }
        v40.g();
        return null;
    }

    public static final Reference.VideoProfile toVideoProfile(StartupVideoProfile startupVideoProfile) {
        int i2 = startupVideoProfile == null ? -1 : WhenMappings.$EnumSwitchMapping$4[startupVideoProfile.ordinal()];
        if (i2 == -1) {
            return null;
        }
        if (i2 == 1) {
            return Reference.VideoProfile.Sd.INSTANCE;
        }
        if (i2 == 2) {
            return Reference.VideoProfile.Md.INSTANCE;
        }
        v40.g();
        return null;
    }
}
