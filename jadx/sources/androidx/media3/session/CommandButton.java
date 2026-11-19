package androidx.media3.session;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.primitives.ImmutableIntArray;
import com.vuitton.android.R;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class CommandButton {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f17237k;
    public static final String l;
    public static final String m;
    public static final String n;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionCommand f17238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17240c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri f17241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CharSequence f17242f;
    public final Bundle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImmutableIntArray f17243h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f17244i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f17245j;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Icon {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Slot {
    }

    static {
        String str = Util.f14242a;
        f17237k = Integer.toString(0, 36);
        l = Integer.toString(1, 36);
        m = Integer.toString(2, 36);
        n = Integer.toString(3, 36);
        o = Integer.toString(4, 36);
        p = Integer.toString(5, 36);
        q = Integer.toString(6, 36);
        r = Integer.toString(7, 36);
        s = Integer.toString(8, 36);
        t = Integer.toString(9, 36);
    }

    public CommandButton(SessionCommand sessionCommand, int i2, int i3, int i4, Uri uri, CharSequence charSequence, Bundle bundle, boolean z, ImmutableIntArray immutableIntArray, Object obj) {
        this.f17238a = sessionCommand;
        this.f17239b = i2;
        this.f17240c = i3;
        this.d = i4;
        this.f17241e = uri;
        this.f17242f = charSequence;
        this.g = new Bundle(bundle);
        this.f17244i = z;
        this.f17243h = immutableIntArray;
        this.f17245j = obj;
    }

    public static Object a(int i2, Object obj) {
        if (obj == null) {
            return null;
        }
        switch (i2) {
            case 1:
                if (obj instanceof Integer) {
                    obj = Long.valueOf(((Integer) obj).longValue());
                }
                Preconditions.h(obj instanceof Long, "Parameter has incorrect type.");
                return obj;
            case 2:
                Preconditions.h(obj instanceof Integer, "Parameter has incorrect type.");
                return obj;
            case 3:
                Preconditions.h(obj instanceof Boolean, "Parameter has incorrect type.");
                return obj;
            case 4:
                if (obj instanceof Double) {
                    obj = Float.valueOf(((Double) obj).floatValue());
                }
                Preconditions.h(obj instanceof Float, "Parameter has incorrect type.");
                return obj;
            case 5:
                Preconditions.h(obj instanceof Rating, "Parameter has incorrect type.");
                return obj;
            case 6:
                Preconditions.h(obj instanceof MediaItem, "Parameter has incorrect type.");
                return obj;
            case 7:
                Preconditions.h(obj instanceof MediaMetadata, "Parameter has incorrect type.");
                return obj;
            case 8:
                Preconditions.h(obj instanceof TrackSelectionParameters, "Parameter has incorrect type.");
                return obj;
            default:
                return null;
        }
    }

    public static boolean c(int i2, List list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (((CommandButton) list.get(i3)).f17243h.b(0) == i2) {
                return true;
            }
        }
        return false;
    }

    public static CommandButton d(SessionCommand sessionCommand) {
        String str = sessionCommand.f17540b;
        Bundle bundle = sessionCommand.f17541c;
        if (!str.startsWith("androidx.media3.session.PLAYER_COMMAND_")) {
            int i2 = Integer.parseInt(str.substring(40));
            Object objL = l("androidx.media3.session.CUSTOM_COMMAND_PARAMETER", i2 == 40010 ? 5 : 0, bundle, 9);
            Builder builder = new Builder(0);
            builder.d(new SessionCommand(i2), objL);
            return builder.a();
        }
        int i3 = Integer.parseInt(str.substring(39));
        Object objL2 = l("androidx.media3.session.CUSTOM_COMMAND_PARAMETER", m(i3), bundle, 9);
        Builder builder2 = new Builder(0);
        Preconditions.h(builder2.f17247b == null, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set.");
        builder2.f17248c = i3;
        builder2.f17253j = a(m(i3), objL2);
        return builder2.a();
    }

    public static ImmutableList g(List list, SessionCommands sessionCommands, Player.Commands commands) {
        int i2;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i3 = 0; i3 < list.size(); i3++) {
            CommandButton commandButton = (CommandButton) list.get(i3);
            SessionCommand sessionCommand = commandButton.f17238a;
            if ((sessionCommand == null || !sessionCommands.f17544a.contains(sessionCommand)) && ((i2 = commandButton.f17239b) == -1 || !commands.a(i2))) {
                if (commandButton.f17244i) {
                    commandButton = new CommandButton(commandButton.f17238a, commandButton.f17239b, commandButton.f17240c, commandButton.d, commandButton.f17241e, commandButton.f17242f, new Bundle(commandButton.g), false, commandButton.f17243h, commandButton.f17245j);
                }
                builder.e(commandButton);
            } else {
                builder.e(commandButton);
            }
        }
        return builder.j();
    }

    public static CommandButton i(int i2, Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(f17237k);
        SessionCommand sessionCommandA = bundle2 == null ? null : SessionCommand.a(bundle2);
        int i3 = bundle.getInt(l, -1);
        int i4 = bundle.getInt(m, 0);
        CharSequence charSequence = bundle.getCharSequence(n, "");
        Bundle bundleP = Util.p(bundle.getBundle(o));
        boolean z = i2 < 3 || bundle.getBoolean(p, true);
        Uri uri = (Uri) bundle.getParcelable(q);
        int i5 = bundle.getInt(r, 0);
        int[] intArray = bundle.getIntArray(s);
        Builder builder = new Builder(i5, i4);
        String str = t;
        if (sessionCommandA != null) {
            builder.d(sessionCommandA, l(str, sessionCommandA.f17539a == 40010 ? 5 : 0, bundle, i2));
        }
        if (i3 != -1) {
            Object objL = l(str, m(i3), bundle, i2);
            Preconditions.h(builder.f17247b == null, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set.");
            builder.f17248c = i3;
            builder.f17253j = a(m(i3), objL);
        }
        if (uri != null && (Objects.equals(uri.getScheme(), "content") || Objects.equals(uri.getScheme(), "android.resource"))) {
            builder.b(uri);
        }
        builder.f17250f = charSequence;
        if (bundleP == null) {
            bundleP = Bundle.EMPTY;
        }
        builder.g = new Bundle(bundleP);
        builder.f17251h = z;
        if (intArray == null) {
            intArray = new int[]{6};
        }
        Preconditions.g(intArray.length != 0);
        builder.f17252i = intArray.length == 0 ? ImmutableIntArray.d : new ImmutableIntArray(Arrays.copyOf(intArray, intArray.length));
        return builder.a();
    }

    public static ImmutableList j(List list, boolean z, boolean z2, int i2) {
        int iB;
        if (list.isEmpty()) {
            return ImmutableList.x();
        }
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < list.size(); i5++) {
            CommandButton commandButton = (CommandButton) list.get(i5);
            boolean z3 = commandButton.f17244i;
            ImmutableIntArray immutableIntArray = commandButton.f17243h;
            if (z3 && commandButton.b()) {
                for (int i6 = 0; i6 < immutableIntArray.f33775c && (iB = immutableIntArray.b(i6)) != 6; i6++) {
                    if (z && i3 == -1 && iB == 2) {
                        i3 = i5;
                        break;
                    }
                    if (z2 && i4 == -1 && iB == 3) {
                        i4 = i5;
                        break;
                    }
                }
            }
        }
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (i3 != -1) {
            builder.e(((CommandButton) list.get(i3)).e(2, i2));
        }
        if (i4 != -1) {
            builder.e(((CommandButton) list.get(i4)).e(3, i2));
        }
        for (int i7 = 0; i7 < list.size(); i7++) {
            CommandButton commandButton2 = (CommandButton) list.get(i7);
            if (commandButton2.f17244i && commandButton2.b() && i7 != i3 && i7 != i4 && commandButton2.f17243h.a(6)) {
                builder.e(commandButton2.e(6, i2));
            }
        }
        return builder.j();
    }

    public static ImmutableList k(List list, Player.Commands commands, Bundle bundle) {
        if (list.isEmpty()) {
            return ImmutableList.x();
        }
        boolean zA = commands.f13924a.a(7, 6);
        boolean zA2 = commands.f13924a.a(9, 8);
        boolean z = bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", false);
        boolean z2 = bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false);
        int i2 = (zA || z) ? -1 : 0;
        int i3 = (zA2 || z2) ? -1 : i2 == 0 ? 1 : 0;
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i4 = 0; i4 < list.size(); i4++) {
            CommandButton commandButton = (CommandButton) list.get(i4);
            if (i4 == i2) {
                if (i3 == -1) {
                    builder.e(commandButton.f(new ImmutableIntArray(new int[]{2, 6})));
                } else {
                    builder.e(commandButton.f(new ImmutableIntArray(new int[]{2, 3, 6})));
                }
            } else if (i4 == i3) {
                builder.e(commandButton.f(new ImmutableIntArray(new int[]{3, 6})));
            } else {
                builder.e(commandButton.f(new ImmutableIntArray(new int[]{6})));
            }
        }
        return builder.j();
    }

    public static Object l(String str, int i2, Bundle bundle, int i3) {
        if (!bundle.containsKey(str)) {
            return null;
        }
        switch (i2) {
            case 1:
                return Long.valueOf(bundle.getLong(str));
            case 2:
                return Integer.valueOf(bundle.getInt(str));
            case 3:
                return Boolean.valueOf(bundle.getBoolean(str));
            case 4:
                return Float.valueOf(bundle.getFloat(str));
            case 5:
                Bundle bundle2 = bundle.getBundle(str);
                bundle2.getClass();
                return Rating.a(bundle2);
            case 6:
                Bundle bundle3 = bundle.getBundle(str);
                bundle3.getClass();
                return MediaItem.b(i3, bundle3);
            case 7:
                Bundle bundle4 = bundle.getBundle(str);
                bundle4.getClass();
                return MediaMetadata.b(i3, bundle4);
            case 8:
                Bundle bundle5 = bundle.getBundle(str);
                bundle5.getClass();
                return TrackSelectionParameters.b(bundle5);
            default:
                return null;
        }
    }

    public static int m(int i2) {
        if (i2 == 1) {
            return 3;
        }
        if (i2 == 5) {
            return 1;
        }
        if (i2 == 10) {
            return 2;
        }
        if (i2 == 19) {
            return 7;
        }
        if (i2 == 24) {
            return 4;
        }
        if (i2 == 29) {
            return 8;
        }
        if (i2 == 31) {
            return 6;
        }
        switch (i2) {
            case 13:
                return 4;
            case 14:
                return 3;
            case 15:
                return 2;
            default:
                return 0;
        }
    }

    public static boolean n(String str) {
        return str.startsWith("androidx.media3.session.PLAYER_COMMAND_") || str.startsWith("androidx.media3.session.SESSION_COMMAND_");
    }

    public final boolean b() {
        Object obj = this.f17245j;
        SessionCommand sessionCommand = this.f17238a;
        if (sessionCommand != null) {
            int i2 = sessionCommand.f17539a;
            if (i2 != 0) {
                return i2 == 40010 && obj != null;
            }
            return true;
        }
        int i3 = this.f17239b;
        if (i3 != 19) {
            if (i3 != 24) {
                if (i3 != 29 && i3 != 31) {
                    switch (i3) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 11:
                        case 12:
                        case 14:
                            break;
                        case 5:
                        case 10:
                        case 13:
                        case 15:
                            break;
                        default:
                            return false;
                    }
                }
            }
            return true;
        }
        return obj != null;
    }

    public final CommandButton e(int i2, int i3) {
        String str;
        SessionCommand sessionCommand = this.f17238a;
        if (sessionCommand != null && sessionCommand.f17539a == 0) {
            return f(new ImmutableIntArray(new int[]{i2}));
        }
        Bundle bundle = Bundle.EMPTY;
        if (this.f17245j != null) {
            bundle = new Bundle();
            p(i3, "androidx.media3.session.CUSTOM_COMMAND_PARAMETER", bundle);
        }
        if (sessionCommand != null) {
            str = "androidx.media3.session.SESSION_COMMAND_" + sessionCommand.f17539a;
        } else {
            str = "androidx.media3.session.PLAYER_COMMAND_" + this.f17239b;
        }
        return new CommandButton(new SessionCommand(str, bundle), -1, this.f17240c, this.d, this.f17241e, this.f17242f, this.g, this.f17244i, new ImmutableIntArray(new int[]{i2}), null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommandButton)) {
            return false;
        }
        CommandButton commandButton = (CommandButton) obj;
        return Objects.equals(this.f17238a, commandButton.f17238a) && this.f17239b == commandButton.f17239b && this.f17240c == commandButton.f17240c && this.d == commandButton.d && Objects.equals(this.f17241e, commandButton.f17241e) && TextUtils.equals(this.f17242f, commandButton.f17242f) && this.f17244i == commandButton.f17244i && this.f17243h.equals(commandButton.f17243h) && Objects.equals(this.f17245j, commandButton.f17245j);
    }

    public final CommandButton f(ImmutableIntArray immutableIntArray) {
        if (this.f17243h.equals(immutableIntArray)) {
            return this;
        }
        return new CommandButton(this.f17238a, this.f17239b, this.f17240c, this.d, this.f17241e, this.f17242f, new Bundle(this.g), this.f17244i, immutableIntArray, this.f17245j);
    }

    public final void h(Player player) {
        if (this.f17244i) {
            Object obj = this.f17245j;
            int i2 = this.f17239b;
            if (i2 == 19) {
                if (obj != null) {
                    player.L((MediaMetadata) obj);
                    return;
                }
                return;
            }
            if (i2 == 24) {
                if (obj != null) {
                    player.g(((Float) obj).floatValue());
                    return;
                } else if (player.q0() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    player.Q();
                    return;
                } else {
                    player.b0();
                    return;
                }
            }
            if (i2 == 29) {
                if (obj != null) {
                    player.F0((TrackSelectionParameters) obj);
                    return;
                }
                return;
            }
            if (i2 == 31) {
                if (obj != null) {
                    player.R((MediaItem) obj);
                    return;
                }
                return;
            }
            switch (i2) {
                case 1:
                    if (obj == null) {
                        player.P(!player.r());
                    } else {
                        player.P(((Boolean) obj).booleanValue());
                    }
                    break;
                case 2:
                    player.f();
                    break;
                case 3:
                    player.stop();
                    break;
                case 4:
                    player.k();
                    break;
                case 5:
                    if (obj != null) {
                        player.seekTo(((Long) obj).longValue());
                    }
                    break;
                case 6:
                    player.F();
                    break;
                case 7:
                    player.l();
                    break;
                case 8:
                    player.S();
                    break;
                case 9:
                    player.q();
                    break;
                case 10:
                    if (obj != null) {
                        player.y0(((Integer) obj).intValue());
                    }
                    break;
                case 11:
                    player.z();
                    break;
                case 12:
                    player.y();
                    break;
                case 13:
                    if (obj != null) {
                        player.t(((Float) obj).floatValue());
                    }
                    break;
                case 14:
                    if (obj == null) {
                        player.j0(!player.w());
                    } else {
                        player.j0(((Boolean) obj).booleanValue());
                    }
                    break;
                case 15:
                    if (obj != null) {
                        player.E0(((Integer) obj).intValue());
                    }
                    break;
            }
        }
    }

    public final int hashCode() {
        return Objects.hash(this.f17238a, Integer.valueOf(this.f17239b), Integer.valueOf(this.f17240c), Integer.valueOf(this.d), this.f17242f, Boolean.valueOf(this.f17244i), this.f17241e, this.f17243h, this.f17245j);
    }

    public final Bundle o(int i2) {
        Bundle bundle = new Bundle();
        SessionCommand sessionCommand = this.f17238a;
        if (sessionCommand != null) {
            bundle.putBundle(f17237k, sessionCommand.b());
        }
        int i3 = this.f17239b;
        if (i3 != -1) {
            bundle.putInt(l, i3);
        }
        int i4 = this.f17240c;
        if (i4 != 0) {
            bundle.putInt(r, i4);
        }
        int i5 = this.d;
        if (i5 != 0) {
            bundle.putInt(m, i5);
        }
        CharSequence charSequence = this.f17242f;
        if (charSequence != "") {
            bundle.putCharSequence(n, charSequence);
        }
        Bundle bundle2 = this.g;
        if (!bundle2.isEmpty()) {
            bundle.putBundle(o, bundle2);
        }
        Uri uri = this.f17241e;
        if (uri != null) {
            bundle.putParcelable(q, uri);
        }
        boolean z = this.f17244i;
        if (!z) {
            bundle.putBoolean(p, z);
        }
        ImmutableIntArray immutableIntArray = this.f17243h;
        if (immutableIntArray.f33775c != 1 || immutableIntArray.b(0) != 6) {
            bundle.putIntArray(s, Arrays.copyOfRange(immutableIntArray.f33774b, 0, immutableIntArray.f33775c));
        }
        if (this.f17245j != null) {
            p(i2, t, bundle);
        }
        return bundle;
    }

    public final void p(int i2, String str, Bundle bundle) {
        int iM;
        SessionCommand sessionCommand = this.f17238a;
        if (sessionCommand != null) {
            iM = sessionCommand.f17539a == 40010 ? 5 : 0;
        } else {
            iM = m(this.f17239b);
        }
        Object obj = this.f17245j;
        switch (iM) {
            case 1:
                bundle.putLong(str, ((Long) obj).longValue());
                break;
            case 2:
                bundle.putInt(str, ((Integer) obj).intValue());
                break;
            case 3:
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
                break;
            case 4:
                bundle.putFloat(str, ((Float) obj).floatValue());
                break;
            case 5:
                bundle.putBundle(str, ((Rating) obj).c());
                break;
            case 6:
                bundle.putBundle(str, ((MediaItem) obj).c(i2, false));
                break;
            case 7:
                bundle.putBundle(str, ((MediaMetadata) obj).c(i2));
                break;
            case 8:
                bundle.putBundle(str, ((TrackSelectionParameters) obj).c());
                break;
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SessionCommand f17247b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f17248c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Uri f17249e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f17250f;
        public Bundle g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f17251h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImmutableIntArray f17252i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f17253j;

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(int i2) {
            int i3;
            String str = CommandButton.f17237k;
            switch (i2) {
                case 57369:
                    i3 = R.drawable.media3_icon_album;
                    break;
                case 57370:
                    i3 = R.drawable.media3_icon_artist;
                    break;
                case 57372:
                    i3 = R.drawable.media3_icon_closed_captions;
                    break;
                case 57375:
                    i3 = R.drawable.media3_icon_fast_forward;
                    break;
                case 57376:
                    i3 = R.drawable.media3_icon_rewind;
                    break;
                case 57396:
                    i3 = R.drawable.media3_icon_pause;
                    break;
                case 57399:
                    i3 = R.drawable.media3_icon_play;
                    break;
                case 57403:
                    i3 = R.drawable.media3_icon_playlist_add;
                    break;
                case 57408:
                    i3 = R.drawable.media3_icon_repeat_all;
                    break;
                case 57409:
                    i3 = R.drawable.media3_icon_repeat_one;
                    break;
                case 57410:
                    i3 = R.drawable.media3_icon_skip_back;
                    break;
                case 57411:
                    i3 = R.drawable.media3_icon_shuffle_on;
                    break;
                case 57412:
                    i3 = R.drawable.media3_icon_next;
                    break;
                case 57413:
                    i3 = R.drawable.media3_icon_previous;
                    break;
                case 57415:
                    i3 = R.drawable.media3_icon_stop;
                    break;
                case 57416:
                    i3 = R.drawable.media3_icon_subtitles;
                    break;
                case 57421:
                    i3 = R.drawable.media3_icon_volume_down;
                    break;
                case 57423:
                    i3 = R.drawable.media3_icon_volume_off;
                    break;
                case 57424:
                    i3 = R.drawable.media3_icon_volume_up;
                    break;
                case 57430:
                    i3 = R.drawable.media3_icon_skip_forward_10;
                    break;
                case 57431:
                    i3 = R.drawable.media3_icon_skip_forward_30;
                    break;
                case 57432:
                    i3 = R.drawable.media3_icon_skip_forward_5;
                    break;
                case 57433:
                    i3 = R.drawable.media3_icon_skip_back_10;
                    break;
                case 57434:
                    i3 = R.drawable.media3_icon_skip_back_30;
                    break;
                case 57435:
                    i3 = R.drawable.media3_icon_skip_back_5;
                    break;
                case 57436:
                    i3 = R.drawable.media3_icon_queue_add;
                    break;
                case 57446:
                    i3 = R.drawable.media3_icon_queue_next;
                    break;
                case 57447:
                    i3 = R.drawable.media3_icon_queue_remove;
                    break;
                case 57448:
                    i3 = R.drawable.media3_icon_playback_speed;
                    break;
                case 57573:
                    i3 = R.drawable.media3_icon_feed;
                    break;
                case 57669:
                    i3 = R.drawable.media3_icon_plus;
                    break;
                case 57671:
                    i3 = R.drawable.media3_icon_plus_circle_unfilled;
                    break;
                case 57675:
                    i3 = R.drawable.media3_icon_block;
                    break;
                case 57683:
                    i3 = R.drawable.media3_icon_flag_unfilled;
                    break;
                case 57691:
                    i3 = R.drawable.media3_icon_minus;
                    break;
                case 58409:
                    i3 = R.drawable.media3_icon_quality;
                    break;
                case 58654:
                    i3 = R.drawable.media3_icon_radio;
                    break;
                case 58919:
                    i3 = R.drawable.media3_icon_sync;
                    break;
                case 59405:
                    i3 = R.drawable.media3_icon_share;
                    break;
                case 59448:
                    i3 = R.drawable.media3_icon_star_unfilled;
                    break;
                case 59494:
                    i3 = R.drawable.media3_icon_bookmark_unfilled;
                    break;
                case 59500:
                    i3 = R.drawable.media3_icon_check_circle_unfilled;
                    break;
                case 59517:
                    i3 = R.drawable.media3_icon_heart_unfilled;
                    break;
                case 59576:
                    i3 = R.drawable.media3_icon_settings;
                    break;
                case 59611:
                    i3 = R.drawable.media3_icon_thumb_down_unfilled;
                    break;
                case 59612:
                    i3 = R.drawable.media3_icon_thumb_up_unfilled;
                    break;
                case 60288:
                    i3 = R.drawable.media3_icon_playlist_remove;
                    break;
                case 61298:
                    i3 = R.drawable.media3_icon_subtitles_off;
                    break;
                case 61389:
                    i3 = R.drawable.media3_icon_playback_speed_1_0;
                    break;
                case 61512:
                    i3 = R.drawable.media3_icon_signal;
                    break;
                case 61916:
                    i3 = R.drawable.media3_icon_closed_captions_off;
                    break;
                case 62688:
                    i3 = R.drawable.media3_icon_playback_speed_1_5;
                    break;
                case 62689:
                    i3 = R.drawable.media3_icon_playback_speed_1_2;
                    break;
                case 62690:
                    i3 = R.drawable.media3_icon_playback_speed_0_5;
                    break;
                case 62699:
                    i3 = R.drawable.media3_icon_playback_speed_2_0;
                    break;
                case 63220:
                    i3 = R.drawable.media3_icon_skip_forward;
                    break;
                case 1040448:
                    i3 = R.drawable.media3_icon_repeat_off;
                    break;
                case 1040451:
                    i3 = R.drawable.media3_icon_shuffle_star;
                    break;
                case 1040452:
                    i3 = R.drawable.media3_icon_shuffle_off;
                    break;
                case 1040470:
                    i3 = R.drawable.media3_icon_skip_forward_15;
                    break;
                case 1040473:
                    i3 = R.drawable.media3_icon_skip_back_15;
                    break;
                case 1040711:
                    i3 = R.drawable.media3_icon_plus_circle_filled;
                    break;
                case 1040712:
                    i3 = R.drawable.media3_icon_minus_circle_filled;
                    break;
                case 1040713:
                    i3 = R.drawable.media3_icon_minus_circle_unfilled;
                    break;
                case 1040723:
                    i3 = R.drawable.media3_icon_flag_filled;
                    break;
                case 1042488:
                    i3 = R.drawable.media3_icon_star_filled;
                    break;
                case 1042534:
                    i3 = R.drawable.media3_icon_bookmark_filled;
                    break;
                case 1042540:
                    i3 = R.drawable.media3_icon_check_circle_filled;
                    break;
                case 1042557:
                    i3 = R.drawable.media3_icon_heart_filled;
                    break;
                case 1042651:
                    i3 = R.drawable.media3_icon_thumb_down_filled;
                    break;
                case 1042652:
                    i3 = R.drawable.media3_icon_thumb_up_filled;
                    break;
                case 1045728:
                    i3 = R.drawable.media3_icon_playback_speed_1_8;
                    break;
                case 1045730:
                    i3 = R.drawable.media3_icon_playback_speed_0_8;
                    break;
                default:
                    i3 = 0;
                    break;
            }
            this(i2, i3);
        }

        /* JADX WARN: Code duplicated, block: B:63:0x008f  */
        public final CommandButton a() {
            int i2;
            int i3 = 1;
            Preconditions.p("Exactly one of sessionCommand and playerCommand should be set", (this.f17247b == null) != (this.f17248c == -1));
            if (this.f17252i == null) {
                int i4 = this.f17248c;
                String str = CommandButton.f17237k;
                if (i4 != 1 && (i2 = this.f17246a) != 57399 && i2 != 57396) {
                    if (i4 == 11 || i4 == 7) {
                        i3 = 2;
                    } else {
                        i3 = 6;
                        if (i4 == 6 || i2 == 57413 || i2 == 57376 || i2 == 57410 || i2 == 57435 || i2 == 57433 || i2 == 1040473 || i2 == 57434) {
                            i3 = 2;
                        } else if (i4 == 12 || i4 == 9 || i4 == 8 || i2 == 57412 || i2 == 57375 || i2 == 63220 || i2 == 57432 || i2 == 57430 || i2 == 1040470 || i2 == 57431) {
                            i3 = 3;
                        }
                    }
                }
                this.f17252i = new ImmutableIntArray(new int[]{i3});
            }
            return new CommandButton(this.f17247b, this.f17248c, this.f17246a, this.d, this.f17249e, this.f17250f, this.g, this.f17251h, this.f17252i, this.f17253j);
        }

        public final void b(Uri uri) {
            Preconditions.h(Objects.equals(uri.getScheme(), "content") || Objects.equals(uri.getScheme(), "android.resource"), "Only content or resource Uris are supported for CommandButton");
            this.f17249e = uri;
        }

        public final void c(int i2) {
            Preconditions.h(this.f17247b == null, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set.");
            this.f17248c = i2;
            this.f17253j = null;
        }

        public final void d(SessionCommand sessionCommand, Object obj) {
            Preconditions.h(this.f17248c == -1, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
            this.f17247b = sessionCommand;
            int i2 = sessionCommand.f17539a;
            String str = CommandButton.f17237k;
            this.f17253j = CommandButton.a(i2 == 40010 ? 5 : 0, obj);
        }

        @Deprecated
        public Builder() {
            this(0);
        }

        public Builder(int i2, int i3) {
            this.f17246a = i2;
            this.d = i3;
            this.f17250f = "";
            this.g = Bundle.EMPTY;
            this.f17248c = -1;
            this.f17251h = true;
        }
    }
}
