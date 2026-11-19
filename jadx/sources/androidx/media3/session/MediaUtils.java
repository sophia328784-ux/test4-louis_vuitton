package androidx.media3.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.core.util.Preconditions;
import androidx.media3.common.FlagSet;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import com.google.common.collect.ImmutableList;
import defpackage.d21;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
abstract class MediaUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MediaBrowserServiceCompat.BrowserRoot f17489a = new MediaBrowserServiceCompat.BrowserRoot("androidx.media3.session.MediaLibraryService", null);

    public static boolean a(SessionPositionInfo sessionPositionInfo, SessionPositionInfo sessionPositionInfo2) {
        Player.PositionInfo positionInfo = sessionPositionInfo.f17552a;
        int i2 = positionInfo.f13931b;
        Player.PositionInfo positionInfo2 = sessionPositionInfo2.f17552a;
        return i2 == positionInfo2.f13931b && positionInfo.f13933e == positionInfo2.f13933e && positionInfo.f13935h == positionInfo2.f13935h && positionInfo.f13936i == positionInfo2.f13936i;
    }

    public static int b(long j2, long j3) {
        if (j2 == -9223372036854775807L || j3 == -9223372036854775807L) {
            return 0;
        }
        if (j3 == 0) {
            return 100;
        }
        return Util.j(Util.V(j2, j3), 0, 100);
    }

    public static long c(PlayerInfo playerInfo, long j2, long j3, long j4) {
        SessionPositionInfo sessionPositionInfo = playerInfo.f17497c;
        SessionPositionInfo sessionPositionInfo2 = playerInfo.f17497c;
        boolean z = sessionPositionInfo.equals(SessionPositionInfo.l) || j3 < sessionPositionInfo2.f17554c;
        if (playerInfo.x) {
            if (z || j2 == -9223372036854775807L) {
                if (j4 == -9223372036854775807L) {
                    j4 = SystemClock.elapsedRealtime() - sessionPositionInfo2.f17554c;
                }
                long j5 = sessionPositionInfo2.f17552a.f13934f + ((long) (j4 * playerInfo.g.f13919a));
                long j6 = sessionPositionInfo2.d;
                return j6 != -9223372036854775807L ? Math.min(j5, j6) : j5;
            }
        } else if (z || j2 == -9223372036854775807L) {
            return sessionPositionInfo2.f17552a.f13934f;
        }
        return j2;
    }

    public static Player.Commands d(Player.Commands commands, Player.Commands commands2) {
        if (commands != null) {
            FlagSet flagSet = commands.f13924a;
            if (commands2 != null) {
                Player.Commands.Builder builder = new Player.Commands.Builder();
                for (int i2 = 0; i2 < flagSet.f13752a.size(); i2++) {
                    if (commands2.a(flagSet.b(i2))) {
                        builder.a(flagSet.b(i2));
                    }
                }
                return builder.c();
            }
        }
        return Player.Commands.f13922b;
    }

    public static PlayerInfo e(PlayerInfo playerInfo, PlayerInfo playerInfo2, PlayerInfo.BundlingExclusions bundlingExclusions, Player.Commands commands, boolean z, SessionToken sessionToken) {
        PlayerInfo playerInfoA;
        if (bundlingExclusions.f17515a && commands.a(17)) {
            Timeline timeline = playerInfo.f17502j;
            Preconditions.f("Invalid PlayerInfo update, old index: " + playerInfo.f17497c.f17552a.f13931b + " (count=" + timeline.o() + "), new index = " + playerInfo2.f17497c.f17552a.f13931b + ", sent from " + sessionToken.f17568a.c() + ", interface version=" + sessionToken.f17568a.d(), timeline.p() || playerInfo2.f17497c.f17552a.f13931b < timeline.o());
            PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo2);
            builder.f17511j = timeline;
            playerInfoA = builder.a();
        } else {
            playerInfoA = playerInfo2;
        }
        if (bundlingExclusions.f17516b && commands.a(30)) {
            Tracks tracks = playerInfo.F;
            PlayerInfo.Builder builderC = d21.c(playerInfoA, playerInfoA);
            builderC.F = tracks;
            playerInfoA = builderC.a();
        }
        if (!z || playerInfo2.n != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return playerInfoA;
        }
        float f2 = playerInfo.o;
        PlayerInfo.Builder builderC2 = d21.c(playerInfoA, playerInfoA);
        builderC2.o = f2;
        return builderC2.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(Player player, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition) {
        int i2 = mediaItemsWithStartPosition.f17424b;
        long j2 = mediaItemsWithStartPosition.f17425c;
        ImmutableList immutableList = mediaItemsWithStartPosition.f17423a;
        if (i2 == -1) {
            if (player.R0(20)) {
                player.M0(immutableList);
                return;
            } else {
                if (immutableList.isEmpty()) {
                    return;
                }
                player.w0((MediaItem) immutableList.get(0));
                return;
            }
        }
        if (player.R0(20)) {
            player.x0(immutableList, mediaItemsWithStartPosition.f17424b, j2);
        } else {
            if (immutableList.isEmpty()) {
                return;
            }
            player.D0((MediaItem) immutableList.get(0), j2);
        }
    }

    public static ArrayList g(List list) {
        ArrayList arrayList = new ArrayList();
        Parcel parcelObtain = Parcel.obtain();
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                Parcelable parcelable = (Parcelable) list.get(i2);
                parcelObtain.writeParcelable(parcelable, 0);
                if (parcelObtain.dataSize() >= 262144) {
                    break;
                }
                arrayList.add(parcelable);
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
        parcelObtain.recycle();
        return arrayList;
    }
}
