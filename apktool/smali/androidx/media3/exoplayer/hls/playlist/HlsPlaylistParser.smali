.class public final Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final A0:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final B0:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final C0:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final O:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;

.field public static final Q:Ljava/util/regex/Pattern;

.field public static final R:Ljava/util/regex/Pattern;

.field public static final S:Ljava/util/regex/Pattern;

.field public static final T:Ljava/util/regex/Pattern;

.field public static final U:Ljava/util/regex/Pattern;

.field public static final V:Ljava/util/regex/Pattern;

.field public static final W:Ljava/util/regex/Pattern;

.field public static final X:Ljava/util/regex/Pattern;

.field public static final Y:Ljava/util/regex/Pattern;

.field public static final Z:Ljava/util/regex/Pattern;

.field public static final a0:Ljava/util/regex/Pattern;

.field public static final b0:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final c0:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final d0:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final e0:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final f0:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final g0:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final h0:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final i0:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final j0:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final k0:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final l0:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final m0:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final n0:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final o0:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final p0:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final q0:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final r0:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final s0:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final t0:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final u0:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/regex/Pattern;

.field public static final v0:Ljava/util/regex/Pattern;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final w0:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;

.field public static final x0:Ljava/util/regex/Pattern;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final y0:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;

.field public static final z0:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field public final b:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k:Ljava/util/regex/Pattern;

    const-string v0, "SUPPLEMENTAL-CODECS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n:Ljava/util/regex/Pattern;

    const-string v0, "PATHWAY-ID=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o:Ljava/util/regex/Pattern;

    const-string v0, "STABLE-VARIANT-ID=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p:Ljava/util/regex/Pattern;

    const-string v0, "STABLE-RENDITION-ID=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r:Ljava/util/regex/Pattern;

    const-string v0, "DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s:Ljava/util/regex/Pattern;

    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t:Ljava/util/regex/Pattern;

    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-DATERANGES"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y:Ljava/util/regex/Pattern;

    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z:Ljava/util/regex/Pattern;

    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A:Ljava/util/regex/Pattern;

    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B:Ljava/util/regex/Pattern;

    const-string v0, "CAN-BLOCK-RELOAD"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->E:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->F:Ljava/util/regex/Pattern;

    const-string v0, "LAST-MSN=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->G:Ljava/util/regex/Pattern;

    const-string v0, "LAST-PART=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->I:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->J:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->M:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->P:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->R:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(PART|MAP)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->T:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->U:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    const-string v0, "QUERYPARAM=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->X:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Y:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Z:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a0:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b0:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    const-string v0, "INDEPENDENT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d0:Ljava/util/regex/Pattern;

    const-string v0, "GAP"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e0:Ljava/util/regex/Pattern;

    const-string v0, "PRECISE"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f0:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h0:Ljava/util/regex/Pattern;

    const-string v0, "[:,]ID=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i0:Ljava/util/regex/Pattern;

    const-string v0, "CLASS=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j0:Ljava/util/regex/Pattern;

    const-string v0, "START-DATE=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k0:Ljava/util/regex/Pattern;

    const-string v0, "CUE=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l0:Ljava/util/regex/Pattern;

    const-string v0, "END-DATE=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m0:Ljava/util/regex/Pattern;

    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n0:Ljava/util/regex/Pattern;

    const-string v0, "END-ON-NEXT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o0:Ljava/util/regex/Pattern;

    const-string v0, "X-ASSET-URI=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p0:Ljava/util/regex/Pattern;

    const-string v0, "X-ASSET-LIST=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q0:Ljava/util/regex/Pattern;

    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r0:Ljava/util/regex/Pattern;

    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s0:Ljava/util/regex/Pattern;

    const-string v0, "X-SNAP=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t0:Ljava/util/regex/Pattern;

    const-string v0, "X-RESTRICT=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u0:Ljava/util/regex/Pattern;

    const-string v0, "X-CONTENT-MAY-VARY=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v0:Ljava/util/regex/Pattern;

    const-string v0, "X-TIMELINE-OCCUPIES=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w0:Ljava/util/regex/Pattern;

    const-string v0, "X-TIMELINE-STYLE=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x0:Ljava/util/regex/Pattern;

    const-string v0, "X-SKIP-CONTROL-OFFSET=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y0:Ljava/util/regex/Pattern;

    const-string v0, "X-SKIP-CONTROL-DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z0:Ljava/util/regex/Pattern;

    const-string v0, "X-SKIP-CONTROL-LABEL-ID=\"((?:.|\u000c)+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A0:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B0:Ljava/util/regex/Pattern;

    const-string v0, "\\b(X-[A-Z0-9-]+)="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C0:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    const-string v0, "=(NO|YES)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;
    .locals 7

    array-length v0, p1

    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->c:Ljava/util/UUID;

    iget-object v5, v2, Landroidx/media3/common/DrmInitData$SchemeData;->d:Ljava/lang/String;

    iget-object v2, v2, Landroidx/media3/common/DrmInitData$SchemeData;->e:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/common/DrmInitData;

    invoke-direct {p1, p0, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object p1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 7

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->P:Ljava/util/regex/Pattern;

    const-string v1, "1"

    invoke-static {p0, v0, v1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_0

    invoke-static {p0, v6, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    sget-object p3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p3, "hls"

    invoke-direct {p1, p2, p3, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v6, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object p1, Landroidx/media3/common/C;->f:Ljava/util/UUID;

    invoke-static {p1, p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[B)[B

    move-result-object p0

    new-instance p2, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p2, p1, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .locals 126

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->c:Z

    if-eqz v1, :cond_0

    iget-object v6, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->x:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v22, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v14 .. v22}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    const-string v5, ""

    const-wide/16 v17, -0x1

    move/from16 v19, v4

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v71, v5

    move-object/from16 v30, v6

    move-wide/from16 v46, v17

    move-wide/from16 v74, v46

    move/from16 v27, v19

    move-wide/from16 v25, v20

    move-wide/from16 v53, v25

    move-wide/from16 v55, v53

    move-wide/from16 v76, v55

    move-wide/from16 v20, v22

    move-wide/from16 v39, v20

    move-wide/from16 v50, v39

    move-wide/from16 v57, v50

    move-wide/from16 v61, v57

    move-wide/from16 v66, v61

    move-wide/from16 v69, v66

    move-wide/from16 v72, v69

    move-wide/from16 v78, v72

    move/from16 v6, v24

    move/from16 v17, v6

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v23, v19

    move/from16 v48, v23

    move/from16 v52, v48

    move/from16 v68, v52

    const/16 v22, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v49, 0x0

    const/16 v65, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->a()Z

    move-result v31

    const-string v4, "HIGHLIGHT"

    move/from16 v41, v6

    const-string v6, "POINT"

    move-object/from16 v81, v14

    if-eqz v31, :cond_af

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->b()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v82, v8

    const-string v8, "#EXT"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v8, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v32, 0x2

    if-eqz v8, :cond_4

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w:Ljava/util/regex/Pattern;

    invoke-static {v14, v4, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "VOD"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v52, 0x1

    goto :goto_2

    :cond_2
    const-string v6, "EVENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v52, v32

    :cond_3
    :goto_2
    move/from16 v6, v41

    move-object/from16 v14, v81

    :goto_3
    move-object/from16 v8, v82

    goto :goto_1

    :cond_4
    const-string v8, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    const/16 v68, 0x1

    goto :goto_1

    :cond_5
    const-string v8, "#EXT-X-START"

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-wide v33, 0x412e848000000000L    # 1000000.0

    if-eqz v8, :cond_6

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->I:Ljava/util/regex/Pattern;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v4, v6, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v31

    move-object v8, v12

    move-object/from16 v83, v13

    mul-double v12, v31, v33

    double-to-long v12, v12

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f0:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v19

    move-wide/from16 v53, v12

    :goto_4
    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v13, v83

    move-object v12, v8

    goto :goto_3

    :cond_6
    move-object v8, v12

    move-object/from16 v83, v13

    const-string v12, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x:Ljava/util/regex/Pattern;

    const-wide/high16 v12, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v14, v4, v12, v13, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v31

    cmpl-double v4, v31, v12

    if-nez v4, :cond_7

    move-wide/from16 v85, v76

    goto :goto_5

    :cond_7
    mul-double v12, v31, v33

    double-to-long v12, v12

    move-wide/from16 v85, v12

    :goto_5
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v87

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A:Ljava/util/regex/Pattern;

    const-wide/high16 v12, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v14, v4, v12, v13, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v31

    cmpl-double v4, v31, v12

    if-nez v4, :cond_8

    move-wide/from16 v88, v76

    goto :goto_6

    :cond_8
    mul-double v12, v31, v33

    double-to-long v12, v12

    move-wide/from16 v88, v12

    :goto_6
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B:Ljava/util/regex/Pattern;

    const-wide/high16 v12, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v14, v4, v12, v13, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v31

    cmpl-double v4, v31, v12

    if-nez v4, :cond_9

    move-wide/from16 v90, v76

    goto :goto_7

    :cond_9
    mul-double v12, v31, v33

    double-to-long v12, v12

    move-wide/from16 v90, v12

    :goto_7
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v92

    new-instance v84, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    invoke-direct/range {v84 .. v92}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    move-object v12, v8

    move/from16 v6, v41

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v14, v84

    goto/16 :goto_1

    :cond_a
    const-string v12, "#EXT-X-PART-INF"

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u:Ljava/util/regex/Pattern;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v4, v6, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    mul-double v12, v12, v33

    double-to-long v12, v12

    move-wide/from16 v25, v12

    goto/16 :goto_4

    :cond_b
    const-string v12, "#EXT-X-MAP"

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    move-object/from16 v84, v8

    const-string v8, "@"

    move/from16 v35, v12

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    if-eqz v35, :cond_11

    invoke-static {v14, v12, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v32

    const/4 v4, 0x0

    invoke-static {v14, v13, v4, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v24

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v46

    array-length v6, v4

    const/4 v8, 0x1

    if-le v6, v8, :cond_c

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v61

    :cond_c
    move-wide/from16 v35, v46

    cmp-long v4, v35, v74

    if-nez v4, :cond_d

    move-wide/from16 v33, v78

    goto :goto_8

    :cond_d
    move-wide/from16 v33, v61

    :goto_8
    if-eqz v37, :cond_f

    if-eqz v38, :cond_e

    goto :goto_9

    :cond_e
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    :goto_9
    new-instance v31, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-direct/range {v31 .. v38}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v85, v38

    if-eqz v4, :cond_10

    add-long v33, v33, v35

    :cond_10
    move-wide/from16 v61, v33

    move-object/from16 v30, v31

    move/from16 v6, v41

    move-wide/from16 v46, v74

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    goto/16 :goto_1

    :cond_11
    move-object/from16 v35, v4

    move-object/from16 v85, v38

    const-string v4, "#EXT-X-TARGETDURATION"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v87, v10

    move-object/from16 v86, v11

    const-wide/32 v10, 0xf4240

    if-eqz v4, :cond_12

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r:Ljava/util/regex/Pattern;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v4, v6, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v12, v4

    mul-long v55, v12, v10

    :goto_a
    move/from16 v6, v41

    :goto_b
    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v10, v87

    goto/16 :goto_1

    :cond_12
    const-string v4, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D:Ljava/util/regex/Pattern;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v4, v6, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v57

    move/from16 v6, v41

    move-wide/from16 v20, v57

    goto :goto_b

    :cond_13
    const-string v4, "#EXT-X-VERSION"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v:Ljava/util/regex/Pattern;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v4, v6, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_a

    :cond_14
    const-string v4, "#EXT-X-DEFINE"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    invoke-static {v14, v4, v6, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    invoke-static {v14, v8, v6, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_15

    invoke-static {v4, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    invoke-static {v14, v6, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p3

    goto :goto_c

    :cond_15
    if-eqz v8, :cond_17

    invoke-static {v8, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;Ljava/util/HashMap;)V

    move-object/from16 v4, p3

    invoke-virtual {v4, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QUERYPARAM \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found in playlist URI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_17
    move-object/from16 v4, p3

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h0:Ljava/util/regex/Pattern;

    invoke-static {v14, v6, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->l:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_18

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    :goto_c
    move/from16 v4, v41

    move-object/from16 v41, v37

    move/from16 v37, v4

    move-object/from16 v115, v5

    move/from16 v11, v24

    move-wide/from16 v45, v46

    move/from16 v47, v48

    move-object/from16 v114, v49

    move-object/from16 v10, v65

    move-wide/from16 v35, v69

    move-object/from16 v34, v71

    move-object/from16 v4, v82

    move-object/from16 v8, v87

    const/16 v16, 0x0

    move-object/from16 v49, v3

    move-object v3, v9

    move-object/from16 v65, v15

    move-object/from16 v15, v83

    goto/16 :goto_6e

    :cond_19
    move-object/from16 v4, p3

    const-string v10, "#EXTINF"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->E:Ljava/util/regex/Pattern;

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v6, v8, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigDecimal;

    const-wide/32 v10, 0xf4240

    invoke-direct {v6, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v8, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v69

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->F:Ljava/util/regex/Pattern;

    invoke-static {v14, v6, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v71

    goto/16 :goto_a

    :cond_1a
    const-string v10, "#EXT-X-SKIP"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-wide/16 v42, 0x1

    if-eqz v10, :cond_23

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z:Ljava/util/regex/Pattern;

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v6, v8, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_1b

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_d

    :cond_1b
    move/from16 v8, v24

    :goto_d
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->q(Z)V

    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v8, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    sub-long v10, v20, v10

    long-to-int v10, v10

    add-int/2addr v6, v10

    if-ltz v10, :cond_22

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-gt v6, v11, :cond_22

    move-wide/from16 v95, v66

    move-object/from16 v38, v85

    :goto_e
    if-ge v10, v6, :cond_21

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v12, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    cmp-long v12, v20, v12

    if-eqz v12, :cond_1d

    iget v12, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->j:I

    sub-int v12, v12, v17

    iget v13, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->e:I

    add-int v94, v12, v13

    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v14, v24

    move-wide/from16 v103, v95

    :goto_f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1c

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    new-instance v97, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    move-object/from16 v98, v4

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->c:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v99, v4

    move-object/from16 v115, v5

    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    move-wide/from16 v100, v4

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->g:Landroidx/media3/common/DrmInitData;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->h:Ljava/lang/String;

    move-object/from16 v105, v4

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->i:Ljava/lang/String;

    move-object/from16 v107, v4

    move-object/from16 v106, v5

    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->j:J

    move-wide/from16 v108, v4

    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->k:J

    move-wide/from16 v110, v4

    iget-boolean v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->l:Z

    iget-boolean v5, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->m:Z

    move/from16 v112, v4

    iget-boolean v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->n:Z

    move/from16 v114, v4

    move/from16 v113, v5

    move/from16 v102, v94

    invoke-direct/range {v97 .. v114}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v4, v97

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    add-long v103, v103, v4

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p3

    move-object/from16 v5, v115

    goto :goto_f

    :cond_1c
    move-object/from16 v115, v5

    new-instance v88, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v0, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    iget-object v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->c:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->m:Ljava/lang/String;

    move-object/from16 v90, v4

    move-object/from16 v91, v5

    iget-wide v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->g:Landroidx/media3/common/DrmInitData;

    iget-object v14, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->h:Ljava/lang/String;

    move-object/from16 v89, v0

    iget-object v0, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->i:Ljava/lang/String;

    move-wide/from16 v92, v4

    iget-wide v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->j:J

    move-wide/from16 v100, v4

    iget-wide v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->k:J

    iget-boolean v11, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->l:Z

    move-object/from16 v99, v0

    move-wide/from16 v102, v4

    move/from16 v104, v11

    move-object/from16 v97, v12

    move-object/from16 v105, v13

    move-object/from16 v98, v14

    invoke-direct/range {v88 .. v105}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v11, v88

    goto :goto_10

    :cond_1d
    move-object/from16 v115, v5

    :goto_10
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    iget-object v0, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->i:Ljava/lang/String;

    add-long v95, v95, v4

    iget-wide v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->k:J

    cmp-long v12, v4, v74

    if-eqz v12, :cond_1e

    iget-wide v12, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->j:J

    add-long v61, v12, v4

    :cond_1e
    iget v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->e:I

    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->c:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->g:Landroidx/media3/common/DrmInitData;

    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->h:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    :cond_1f
    move-object/from16 v38, v0

    :cond_20
    add-long v57, v57, v42

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v41, v4

    move-object/from16 v30, v5

    move-object/from16 v37, v11

    move-object/from16 v29, v12

    move-wide/from16 v39, v95

    move-object/from16 v5, v115

    move-object/from16 v4, p3

    goto/16 :goto_e

    :cond_21
    move-object/from16 v0, p0

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v11, v86

    move-object/from16 v10, v87

    move-wide/from16 v66, v95

    goto/16 :goto_1

    :cond_22
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    :cond_23
    move-object/from16 v115, v5

    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v14, v0, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    const-string v5, "identity"

    invoke-static {v14, v4, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NONE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v15}, Ljava/util/TreeMap;->clear()V

    const/16 v29, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    goto :goto_15

    :cond_24
    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->R:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    invoke-static {v14, v6, v8, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v4, "AES-128"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {v14, v12, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v37, v0

    move-object/from16 v38, v6

    goto :goto_15

    :cond_25
    move-object/from16 v38, v6

    :goto_11
    const/16 v37, 0x0

    goto :goto_15

    :cond_26
    move-object/from16 v5, v65

    if-nez v5, :cond_29

    const-string v5, "SAMPLE-AES-CENC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "SAMPLE-AES-CTR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_13

    :cond_27
    const-string v0, "cbcs"

    :goto_12
    move-object/from16 v65, v0

    goto :goto_14

    :cond_28
    :goto_13
    const-string v0, "cenc"

    goto :goto_12

    :cond_29
    move-object/from16 v65, v5

    :goto_14
    invoke-static {v14, v4, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v15, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v38, v6

    const/16 v29, 0x0

    goto :goto_11

    :goto_15
    move-object/from16 v0, p0

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    :goto_16
    move-object/from16 v11, v86

    move-object/from16 v10, v87

    move-object/from16 v5, v115

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v5, v65

    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->J:Ljava/util/regex/Pattern;

    invoke-static {v14, v0, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v24

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v46

    array-length v4, v0

    const/4 v10, 0x1

    if-le v4, v10, :cond_2b

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v61, v11

    :cond_2b
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v65, v5

    move/from16 v6, v41

    :goto_18
    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    goto :goto_16

    :cond_2c
    const/4 v10, 0x1

    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x3a

    if-eqz v0, :cond_2d

    invoke-virtual {v14, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v65, v5

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v10, v87

    move-object/from16 v5, v115

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_2d
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    add-int/lit8 v6, v41, 0x1

    move-object/from16 v0, p0

    move-object/from16 v65, v5

    goto :goto_18

    :cond_2e
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    cmp-long v0, v50, v78

    if-nez v0, :cond_2f

    invoke-virtual {v14, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v80, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->U(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v10

    sub-long v50, v10, v66

    goto :goto_17

    :cond_2f
    :goto_19
    move/from16 v4, v41

    move-object/from16 v41, v37

    move/from16 v37, v4

    move-object v10, v5

    move-object/from16 v65, v15

    move/from16 v11, v24

    move-wide/from16 v45, v46

    move/from16 v47, v48

    move-object/from16 v114, v49

    move-wide/from16 v35, v69

    move-object/from16 v34, v71

    move-object/from16 v4, v82

    move-object/from16 v15, v83

    move-object/from16 v8, v87

    const/16 v16, 0x0

    move-object/from16 v49, v3

    move-object v3, v9

    goto/16 :goto_6e

    :cond_30
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object/from16 v0, p0

    move-object/from16 v65, v5

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v10, v87

    move-object/from16 v5, v115

    const/16 v48, 0x1

    goto/16 :goto_1

    :cond_31
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object/from16 v0, p0

    move-object/from16 v65, v5

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v10, v87

    move-object/from16 v5, v115

    const/16 v27, 0x1

    goto/16 :goto_1

    :cond_32
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object/from16 v0, p0

    move-object/from16 v65, v5

    move/from16 v6, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v10, v87

    move-object/from16 v5, v115

    const/16 v23, 0x1

    goto/16 :goto_1

    :cond_33
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->G:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v10

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    :cond_34
    const/4 v0, -0x1

    :goto_1a
    invoke-static {v14, v12, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/common/util/UriUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v6, v4, v10, v11, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    move-object/from16 v0, v86

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_35
    move-object/from16 v0, v86

    const-string v4, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v4, v49

    if-eqz v4, :cond_36

    :goto_1b
    move/from16 v8, v41

    move-object/from16 v41, v37

    move/from16 v37, v8

    move-object/from16 v86, v0

    move-object/from16 v49, v3

    move-object/from16 v114, v4

    move-object v10, v5

    move-object v3, v9

    move-object/from16 v65, v15

    move/from16 v11, v24

    move-wide/from16 v45, v46

    move/from16 v47, v48

    move-wide/from16 v35, v69

    move-object/from16 v34, v71

    move-object/from16 v4, v82

    move-object/from16 v15, v83

    move-object/from16 v8, v87

    const/16 v16, 0x0

    goto/16 :goto_6e

    :cond_36
    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->T:Ljava/util/regex/Pattern;

    invoke-static {v14, v6, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "PART"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_1b

    :cond_37
    move-object/from16 v10, v29

    invoke-static {v14, v12, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v29

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v11

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->M:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v13

    if-nez v37, :cond_38

    const/16 v38, 0x0

    goto :goto_1c

    :cond_38
    if-eqz v85, :cond_39

    move-object/from16 v38, v85

    goto :goto_1c

    :cond_39
    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v38, v6

    :goto_1c
    if-nez v10, :cond_3b

    invoke-virtual {v15}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v15}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    move/from16 v8, v24

    new-array v10, v8, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v8, Landroidx/media3/common/DrmInitData;

    invoke-direct {v8, v5, v6}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v28, :cond_3a

    invoke-static {v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v6

    move-object/from16 v36, v8

    goto :goto_1e

    :cond_3a
    move-object/from16 v36, v8

    :goto_1d
    move-object/from16 v6, v28

    goto :goto_1e

    :cond_3b
    move-object/from16 v36, v10

    goto :goto_1d

    :goto_1e
    cmp-long v8, v11, v74

    if-eqz v8, :cond_3d

    cmp-long v10, v13, v74

    if-eqz v10, :cond_3c

    goto :goto_1f

    :cond_3c
    move/from16 v49, v41

    move-object/from16 v41, v37

    move/from16 v37, v49

    move-object/from16 v49, v4

    goto :goto_21

    :cond_3d
    :goto_1f
    new-instance v28, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v8, :cond_3e

    goto :goto_20

    :cond_3e
    move-wide/from16 v11, v78

    :goto_20
    const/16 v44, 0x0

    const/16 v45, 0x1

    const-wide/16 v31, 0x0

    const/16 v43, 0x0

    move-wide/from16 v34, v39

    move/from16 v33, v41

    move-wide/from16 v39, v11

    move-wide/from16 v41, v13

    invoke-direct/range {v28 .. v45}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-wide/from16 v39, v34

    move-object/from16 v41, v37

    move/from16 v37, v33

    move-object/from16 v49, v28

    :goto_21
    move-object v11, v0

    move-object/from16 v65, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v36

    move/from16 v6, v37

    move-object/from16 v37, v41

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v10, v87

    move-object/from16 v5, v115

    const/16 v24, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_3f
    move/from16 v4, v41

    move-object/from16 v41, v37

    move/from16 v37, v4

    move-object/from16 v10, v29

    move-object/from16 v4, v49

    const-string v11, "#EXT-X-PART"

    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_49

    if-nez v41, :cond_40

    const/16 v38, 0x0

    goto :goto_22

    :cond_40
    if-eqz v85, :cond_41

    move-object/from16 v38, v85

    goto :goto_22

    :cond_41
    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v38, v6

    :goto_22
    invoke-static {v14, v12, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v29

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s:Ljava/util/regex/Pattern;

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v14, v6, v11, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double v11, v11, v33

    double-to-long v11, v11

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d0:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v6

    if-eqz v27, :cond_42

    invoke-interface/range {v87 .. v87}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_42

    const/16 v32, 0x1

    goto :goto_23

    :cond_42
    const/16 v32, 0x0

    :goto_23
    or-int v44, v6, v32

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e0:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v43

    const/4 v6, 0x0

    invoke-static {v14, v13, v6, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_43

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v13, v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/16 v24, 0x0

    aget-object v8, v6, v24

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    array-length v8, v6

    move-object/from16 v49, v3

    const/4 v3, 0x1

    if-le v8, v3, :cond_44

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v72

    goto :goto_24

    :cond_43
    move-object/from16 v49, v3

    move-wide/from16 v13, v74

    :cond_44
    :goto_24
    cmp-long v3, v13, v74

    if-nez v3, :cond_45

    move-wide/from16 v72, v78

    :cond_45
    if-nez v10, :cond_47

    invoke-virtual {v15}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v15}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v8, 0x0

    new-array v10, v8, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v8, Landroidx/media3/common/DrmInitData;

    invoke-direct {v8, v5, v6}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v28, :cond_46

    invoke-static {v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v6

    move-object/from16 v36, v8

    goto :goto_26

    :cond_46
    move-object/from16 v36, v8

    :goto_25
    move-object/from16 v6, v28

    goto :goto_26

    :cond_47
    move-object/from16 v36, v10

    goto :goto_25

    :goto_26
    new-instance v28, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    const/16 v45, 0x0

    move-wide/from16 v31, v11

    move/from16 v33, v37

    move-wide/from16 v34, v39

    move-object/from16 v37, v41

    move-wide/from16 v39, v72

    move-wide/from16 v41, v13

    invoke-direct/range {v28 .. v45}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v10, v28

    move-object/from16 v8, v87

    move-wide/from16 v39, v34

    move-object/from16 v41, v37

    move/from16 v37, v33

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v39, v39, v31

    if-eqz v3, :cond_48

    add-long v72, v72, v13

    :cond_48
    move-object v11, v0

    move-object/from16 v65, v5

    move-object/from16 v28, v6

    move-object v10, v8

    move-object/from16 v29, v36

    move/from16 v6, v37

    move-object/from16 v37, v41

    move-object/from16 v3, v49

    move-object/from16 v14, v81

    move-object/from16 v8, v82

    move-object/from16 v13, v83

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v5, v115

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v49, v4

    goto/16 :goto_1

    :cond_49
    move-object/from16 v49, v3

    move-object/from16 v8, v87

    const-string v3, "#EXT-X-DATERANGE"

    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j0:Ljava/util/regex/Pattern;

    move-object/from16 v11, v115

    invoke-static {v14, v3, v11, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "com.apple.hls.interstitial"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i0:Ljava/util/regex/Pattern;

    invoke-static {v14, v3, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p0:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    invoke-static {v14, v12, v13, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4a

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v12, v16

    :goto_27
    move-object/from16 v87, v8

    goto :goto_28

    :cond_4a
    move-object v12, v13

    goto :goto_27

    :goto_28
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q0:Ljava/util/regex/Pattern;

    invoke-static {v14, v8, v13, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v8, v16

    :goto_29
    move-object/from16 v29, v10

    goto :goto_2a

    :cond_4b
    move-object v8, v13

    goto :goto_29

    :goto_2a
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k0:Ljava/util/regex/Pattern;

    invoke-static {v14, v10, v13, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4c

    invoke-static {v10}, Landroidx/media3/common/util/Util;->U(Ljava/lang/String;)J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v42

    move-wide/from16 v90, v42

    goto :goto_2b

    :cond_4c
    move-wide/from16 v90, v76

    :goto_2b
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m0:Ljava/util/regex/Pattern;

    invoke-static {v14, v10, v13, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4d

    invoke-static {v10}, Landroidx/media3/common/util/Util;->U(Ljava/lang/String;)J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v42

    move-wide/from16 v94, v42

    goto :goto_2c

    :cond_4d
    move-wide/from16 v94, v76

    :goto_2c
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v115, v11

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l0:Ljava/util/regex/Pattern;

    invoke-static {v14, v11, v13, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v11

    const-string v13, ","

    if-eqz v11, :cond_51

    sget-object v36, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    move-object/from16 v65, v15

    const/4 v15, -0x1

    invoke-virtual {v11, v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    array-length v15, v11

    move-object/from16 v36, v11

    const/4 v11, 0x0

    :goto_2d
    if-ge v11, v15, :cond_52

    aget-object v38, v36, v11

    move/from16 v42, v11

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v38

    sparse-switch v38, :sswitch_data_0

    move/from16 v38, v15

    :goto_2e
    const/4 v15, -0x1

    goto :goto_30

    :sswitch_0
    move/from16 v38, v15

    const-string v15, "POST"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4e

    goto :goto_2f

    :cond_4e
    move/from16 v15, v32

    goto :goto_30

    :sswitch_1
    move/from16 v38, v15

    const-string v15, "ONCE"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4f

    goto :goto_2f

    :cond_4f
    const/4 v15, 0x1

    goto :goto_30

    :sswitch_2
    move/from16 v38, v15

    const-string v15, "PRE"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_50

    :goto_2f
    goto :goto_2e

    :cond_50
    const/4 v15, 0x0

    :goto_30
    packed-switch v15, :pswitch_data_0

    goto :goto_31

    :pswitch_0
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_31
    add-int/lit8 v11, v42, 0x1

    move/from16 v15, v38

    goto :goto_2d

    :cond_51
    move-object/from16 v65, v15

    :cond_52
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t:Ljava/util/regex/Pattern;

    move-object/from16 v86, v0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v14, v11, v0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v42

    const-wide/16 v44, 0x0

    cmpl-double v11, v42, v44

    if-ltz v11, :cond_53

    mul-double v0, v42, v33

    double-to-long v0, v0

    move-wide/from16 v98, v0

    goto :goto_32

    :cond_53
    move-wide/from16 v98, v76

    :goto_32
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n0:Ljava/util/regex/Pattern;

    move-object v11, v4

    move-object v1, v5

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v14, v0, v4, v5, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v42

    cmpl-double v0, v42, v44

    if-ltz v0, :cond_54

    mul-double v4, v42, v33

    double-to-long v4, v4

    move-wide/from16 v102, v4

    goto :goto_33

    :cond_54
    move-wide/from16 v102, v76

    :goto_33
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o0:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r0:Ljava/util/regex/Pattern;

    move v15, v0

    move-object v5, v1

    const-wide/16 v0, 0x1

    invoke-static {v14, v4, v0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v42

    cmpl-double v0, v42, v0

    if-eqz v0, :cond_55

    mul-double v0, v42, v33

    double-to-long v0, v0

    move-wide/from16 v106, v0

    goto :goto_34

    :cond_55
    move-wide/from16 v106, v76

    :goto_34
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s0:Ljava/util/regex/Pattern;

    move-object v1, v5

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v14, v0, v4, v5, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v42

    cmpl-double v0, v42, v44

    if-ltz v0, :cond_56

    mul-double v4, v42, v33

    double-to-long v4, v4

    move-wide/from16 v110, v4

    goto :goto_35

    :cond_56
    move-wide/from16 v110, v76

    :goto_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t0:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v14, v4, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_58

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move-object/from16 v36, v1

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v5, :cond_59

    aget-object v38, v4, v1

    move/from16 v42, v1

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v38, v4

    const-string v4, "IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "OUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto :goto_37

    :cond_57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_37
    add-int/lit8 v1, v42, 0x1

    move-object/from16 v4, v38

    goto :goto_36

    :cond_58
    move-object/from16 v36, v1

    :cond_59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u0:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v14, v4, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v13, 0x0

    :goto_38
    if-ge v13, v5, :cond_5b

    aget-object v38, v4, v13

    move-object/from16 v42, v4

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v38, v5

    const-string v5, "JUMP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "SKIP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_39

    :cond_5a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_39
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v38

    move-object/from16 v4, v42

    goto :goto_38

    :cond_5b
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v0:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v14, v4, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    const-string v13, "NO"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v80, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v4, v16

    goto :goto_3a

    :cond_5c
    move-object v4, v5

    :goto_3a
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w0:Ljava/util/regex/Pattern;

    invoke-static {v14, v13, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5e

    const-string v5, "RANGE"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5d

    move-object v6, v5

    goto :goto_3b

    :cond_5d
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_3b

    :cond_5e
    const/4 v6, 0x0

    :goto_3b
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x0:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    invoke-static {v14, v5, v13, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    const-string v13, "PRIMARY"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5f

    goto :goto_3c

    :cond_5f
    move-object/from16 v13, v35

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_3c

    :cond_60
    const/4 v13, 0x0

    :goto_3c
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y0:Ljava/util/regex/Pattern;

    move-object/from16 v35, v0

    move-object/from16 v38, v1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v14, v5, v0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v42

    cmpl-double v5, v42, v44

    if-ltz v5, :cond_61

    mul-double v0, v42, v33

    double-to-long v0, v0

    move-wide/from16 v118, v0

    goto :goto_3d

    :cond_61
    move-wide/from16 v118, v76

    :goto_3d
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z0:Ljava/util/regex/Pattern;

    move-object v1, v6

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-static {v14, v0, v5, v6, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D

    move-result-wide v5

    cmpl-double v0, v5, v44

    if-ltz v0, :cond_62

    mul-double v5, v5, v33

    double-to-long v5, v5

    move-wide/from16 v122, v5

    goto :goto_3e

    :cond_62
    move-wide/from16 v122, v76

    :goto_3e
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A0:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v14, v0, v5, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x11

    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C0:Ljava/util/regex/Pattern;

    invoke-static {v2, v6, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v14

    :goto_3f
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v33

    if-eqz v33, :cond_73

    move-object/from16 v33, v1

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v34

    move-object/from16 v114, v11

    sparse-switch v34, :sswitch_data_1

    :goto_40
    const/4 v11, -0x1

    goto/16 :goto_42

    :sswitch_3
    const-string v11, "X-SKIP-CONTROL-LABEL-ID="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_63

    goto/16 :goto_41

    :cond_63
    const/16 v11, 0xb

    goto/16 :goto_42

    :sswitch_4
    const-string v11, "X-ASSET-URI="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_64

    goto/16 :goto_41

    :cond_64
    const/16 v11, 0xa

    goto/16 :goto_42

    :sswitch_5
    const-string v11, "X-RESUME-OFFSET="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_65

    goto/16 :goto_41

    :cond_65
    const/16 v11, 0x9

    goto/16 :goto_42

    :sswitch_6
    const-string v11, "X-RESTRICT="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_66

    goto/16 :goto_41

    :cond_66
    const/16 v11, 0x8

    goto/16 :goto_42

    :sswitch_7
    const-string v11, "X-SKIP-CONTROL-OFFSET="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_67

    goto :goto_41

    :cond_67
    const/4 v11, 0x7

    goto :goto_42

    :sswitch_8
    const-string v11, "X-SKIP-CONTROL-DURATION="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_68

    goto :goto_41

    :cond_68
    const/4 v11, 0x6

    goto :goto_42

    :sswitch_9
    const-string v11, "X-TIMELINE-OCCUPIES="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_69

    goto :goto_41

    :cond_69
    const/4 v11, 0x5

    goto :goto_42

    :sswitch_a
    const-string v11, "X-ASSET-LIST="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6a

    goto :goto_41

    :cond_6a
    const/4 v11, 0x4

    goto :goto_42

    :sswitch_b
    const-string v11, "X-TIMELINE-STYLE="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6b

    goto :goto_41

    :cond_6b
    const/4 v11, 0x3

    goto :goto_42

    :sswitch_c
    const-string v11, "X-PLAYOUT-LIMIT="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6c

    goto :goto_41

    :cond_6c
    move/from16 v11, v32

    goto :goto_42

    :sswitch_d
    const-string v11, "X-CONTENT-MAY-VARY="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6d

    goto :goto_41

    :cond_6d
    const/4 v11, 0x1

    goto :goto_42

    :sswitch_e
    const-string v11, "X-SNAP="

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6e

    :goto_41
    goto/16 :goto_40

    :cond_6e
    const/4 v11, 0x0

    :goto_42
    packed-switch v11, :pswitch_data_1

    move-object/from16 v34, v14

    const/4 v11, 0x0

    const/4 v14, 0x1

    invoke-static {v14, v11, v1}, Lo60;->g(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    move/from16 v42, v15

    add-int/lit8 v15, v11, 0x1

    if-ne v14, v15, :cond_6f

    const/4 v14, 0x1

    goto :goto_43

    :cond_6f
    move/from16 v14, v32

    :goto_43
    add-int/2addr v14, v11

    invoke-virtual {v6, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v14, "\""

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_70

    const-string v11, "=\"((?:.|\u000c)+?)\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-static {v6, v11, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v11, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v15, v9

    move-object/from16 v43, v10

    goto :goto_45

    :cond_70
    const-string v14, "0x"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_71

    const-string v14, "0X"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_72

    :cond_71
    move-object v15, v9

    move-object/from16 v43, v10

    goto :goto_44

    :cond_72
    const-string v11, "=([\\d\\.]+)\\b"

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    sget-object v15, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v6, v11, v15, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v11

    move-object v15, v9

    move-object/from16 v43, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-direct {v14, v1, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;D)V

    goto :goto_45

    :goto_44
    const-string v9, "=(0[xX][A-F0-9]+)"

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-static {v6, v9, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v9

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    const/4 v10, 0x1

    invoke-direct {v14, v1, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_45
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :pswitch_1
    move-object/from16 v43, v10

    move-object/from16 v34, v14

    move/from16 v42, v15

    move-object v15, v9

    :goto_46
    move-object v9, v15

    move-object/from16 v1, v33

    move-object/from16 v14, v34

    move/from16 v15, v42

    move-object/from16 v10, v43

    move-object/from16 v11, v114

    goto/16 :goto_3f

    :cond_73
    move-object/from16 v33, v1

    move-object/from16 v43, v10

    move-object/from16 v114, v11

    move/from16 v42, v15

    move-object/from16 v1, v83

    move-object v15, v9

    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    goto :goto_47

    :cond_74
    new-instance v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    invoke-direct {v6, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;-><init>(Ljava/lang/String;)V

    :goto_47
    if-nez v12, :cond_75

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_48

    :cond_75
    iget-object v9, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->c:Landroid/net/Uri;

    if-eqz v9, :cond_76

    invoke-virtual {v9, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Can\'t change assetUri from %s to %s"

    iget-object v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->c:Landroid/net/Uri;

    invoke-static {v9, v10, v11, v12}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    :cond_76
    iput-object v12, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->c:Landroid/net/Uri;

    :goto_48
    if-nez v8, :cond_77

    goto :goto_49

    :cond_77
    iget-object v9, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->d:Landroid/net/Uri;

    if-eqz v9, :cond_78

    invoke-virtual {v9, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Can\'t change assetListUri from %s to %s"

    iget-object v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->d:Landroid/net/Uri;

    invoke-static {v9, v10, v11, v8}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    :cond_78
    iput-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->d:Landroid/net/Uri;

    :goto_49
    cmp-long v8, v90, v76

    if-nez v8, :cond_79

    goto :goto_4b

    :cond_79
    iget-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->e:J

    cmp-long v10, v8, v76

    if-eqz v10, :cond_7b

    cmp-long v10, v8, v90

    if-nez v10, :cond_7a

    const/16 v93, 0x1

    goto :goto_4a

    :cond_7a
    const/16 v93, 0x0

    :goto_4a
    const-string v92, "Can\'t change startDateUnixUs from %s to %s"

    move-wide/from16 v88, v8

    invoke-static/range {v88 .. v93}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_7b
    move-wide/from16 v8, v90

    iput-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->e:J

    :goto_4b
    cmp-long v8, v94, v76

    if-nez v8, :cond_7c

    goto :goto_4d

    :cond_7c
    iget-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->f:J

    cmp-long v10, v8, v76

    if-eqz v10, :cond_7e

    cmp-long v10, v8, v94

    if-nez v10, :cond_7d

    const/16 v97, 0x1

    goto :goto_4c

    :cond_7d
    const/16 v97, 0x0

    :goto_4c
    const-string v96, "Can\'t change endDateUnixUs from %s to %s"

    move-wide/from16 v92, v8

    invoke-static/range {v92 .. v97}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_7e
    move-wide/from16 v8, v94

    iput-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->f:J

    :goto_4d
    cmp-long v8, v98, v76

    if-nez v8, :cond_7f

    goto :goto_4f

    :cond_7f
    iget-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->g:J

    cmp-long v10, v8, v76

    if-eqz v10, :cond_81

    cmp-long v10, v8, v98

    if-nez v10, :cond_80

    const/16 v101, 0x1

    goto :goto_4e

    :cond_80
    const/16 v101, 0x0

    :goto_4e
    const-string v100, "Can\'t change durationUs from %s to %s"

    move-wide/from16 v96, v8

    invoke-static/range {v96 .. v101}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_81
    move-wide/from16 v8, v98

    iput-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->g:J

    :goto_4f
    cmp-long v8, v102, v76

    if-nez v8, :cond_82

    goto :goto_51

    :cond_82
    iget-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->h:J

    cmp-long v10, v8, v76

    if-eqz v10, :cond_84

    cmp-long v10, v8, v102

    if-nez v10, :cond_83

    const/16 v105, 0x1

    goto :goto_50

    :cond_83
    const/16 v105, 0x0

    :goto_50
    const-string v104, "Can\'t change plannedDurationUs from %s to %s"

    move-wide/from16 v100, v8

    invoke-static/range {v100 .. v105}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_84
    move-wide/from16 v8, v102

    iput-wide v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->h:J

    :goto_51
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const-string v9, " to "

    const-string v10, ", "

    if-eqz v8, :cond_85

    goto :goto_53

    :cond_85
    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->i:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_86

    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->i:Ljava/util/ArrayList;

    move-object/from16 v11, v43

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Can\'t change cue from "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->i:Ljava/util/ArrayList;

    invoke-static {v10, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    goto :goto_52

    :cond_86
    move-object/from16 v11, v43

    :goto_52
    iput-object v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->i:Ljava/util/ArrayList;

    :goto_53
    if-nez v42, :cond_87

    goto :goto_54

    :cond_87
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->j:Z

    :goto_54
    cmp-long v8, v106, v76

    if-nez v8, :cond_88

    goto :goto_56

    :cond_88
    iget-wide v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->k:J

    cmp-long v8, v11, v76

    if-eqz v8, :cond_8a

    cmp-long v8, v11, v106

    if-nez v8, :cond_89

    const/16 v109, 0x1

    goto :goto_55

    :cond_89
    const/16 v109, 0x0

    :goto_55
    const-string v108, "Can\'t change resumeOffsetUs from %s to %s"

    move-wide/from16 v104, v11

    invoke-static/range {v104 .. v109}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_8a
    move-wide/from16 v11, v106

    iput-wide v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->k:J

    :goto_56
    cmp-long v8, v110, v76

    if-nez v8, :cond_8b

    goto :goto_58

    :cond_8b
    iget-wide v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->l:J

    cmp-long v8, v11, v76

    if-eqz v8, :cond_8d

    cmp-long v8, v11, v110

    if-nez v8, :cond_8c

    const/16 v113, 0x1

    goto :goto_57

    :cond_8c
    const/16 v113, 0x0

    :goto_57
    const-string v112, "Can\'t change playoutLimitUs from %s to %s"

    move-wide/from16 v108, v11

    invoke-static/range {v108 .. v113}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_8d
    move-wide/from16 v11, v110

    iput-wide v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->l:J

    :goto_58
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8e

    goto :goto_5a

    :cond_8e
    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->m:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8f

    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->m:Ljava/util/ArrayList;

    move-object/from16 v11, v35

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Can\'t change snapTypes from "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->m:Ljava/util/ArrayList;

    invoke-static {v10, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    goto :goto_59

    :cond_8f
    move-object/from16 v11, v35

    :goto_59
    iput-object v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->m:Ljava/util/ArrayList;

    :goto_5a
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_90

    goto :goto_5c

    :cond_90
    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->n:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_91

    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->n:Ljava/util/ArrayList;

    move-object/from16 v11, v38

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Can\'t change restrictions from "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->n:Ljava/util/ArrayList;

    invoke-static {v10, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    goto :goto_5b

    :cond_91
    move-object/from16 v11, v38

    :goto_5b
    iput-object v11, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->n:Ljava/util/ArrayList;

    :goto_5c
    iget-object v8, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_93

    :cond_92
    move-object/from16 v83, v15

    const/16 v16, 0x0

    move-object v15, v1

    goto :goto_60

    :cond_93
    const/4 v9, 0x0

    :goto_5d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_92

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    iget-object v11, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    if-eqz v12, :cond_95

    invoke-virtual {v12, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v32, v5

    iget-object v5, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->d:Ljava/lang/String;

    move/from16 v31, v14

    move-object/from16 v83, v15

    iget-wide v14, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->c:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-object v14, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->d:Ljava/lang/String;

    move-object v15, v1

    iget-wide v1, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v11, v5, v12, v14, v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz v31, :cond_94

    :goto_5e
    const/16 v16, 0x0

    goto :goto_5f

    :cond_94
    const-string v0, "Can\'t change %s from %s %s to %s %s"

    invoke-static {v0, v1}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/16 v16, 0x0

    return-object v16

    :cond_95
    move-object/from16 v32, v5

    move-object/from16 v83, v15

    move-object v15, v1

    goto :goto_5e

    :goto_5f
    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p4

    move-object v1, v15

    move-object/from16 v5, v32

    move-object/from16 v15, v83

    goto :goto_5d

    :goto_60
    if-nez v4, :cond_96

    goto :goto_61

    :cond_96
    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_97

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Can\'t change contentMayVary from %s to %s"

    iget-object v5, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->o:Ljava/lang/Boolean;

    invoke-static {v1, v2, v5, v4}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    :cond_97
    iput-object v4, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->o:Ljava/lang/Boolean;

    :goto_61
    if-nez v33, :cond_98

    goto :goto_62

    :cond_98
    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->p:Ljava/lang/String;

    move-object/from16 v5, v33

    if-eqz v1, :cond_99

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Can\'t change timelineOccupies from %s to %s"

    iget-object v4, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->p:Ljava/lang/String;

    invoke-static {v1, v2, v4, v5}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    :cond_99
    iput-object v5, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->p:Ljava/lang/String;

    :goto_62
    if-nez v13, :cond_9a

    goto :goto_63

    :cond_9a
    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->q:Ljava/lang/String;

    if-eqz v1, :cond_9b

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Can\'t change timelineStyle from %s to %s"

    iget-object v4, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->q:Ljava/lang/String;

    invoke-static {v1, v2, v4, v13}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    :cond_9b
    iput-object v13, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->q:Ljava/lang/String;

    :goto_63
    cmp-long v1, v118, v76

    if-nez v1, :cond_9c

    goto :goto_65

    :cond_9c
    iget-wide v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->r:J

    cmp-long v4, v1, v76

    if-eqz v4, :cond_9e

    cmp-long v4, v1, v118

    if-nez v4, :cond_9d

    const/16 v121, 0x1

    goto :goto_64

    :cond_9d
    const/16 v121, 0x0

    :goto_64
    const-string v120, "Can\'t change skipControlOffsetUs from %s to %s"

    move-wide/from16 v116, v1

    invoke-static/range {v116 .. v121}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_9e
    move-wide/from16 v1, v118

    iput-wide v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->r:J

    :goto_65
    cmp-long v1, v122, v76

    if-nez v1, :cond_9f

    goto :goto_67

    :cond_9f
    iget-wide v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->s:J

    cmp-long v4, v1, v76

    if-eqz v4, :cond_a1

    cmp-long v4, v1, v122

    if-nez v4, :cond_a0

    const/16 v125, 0x1

    goto :goto_66

    :cond_a0
    const/16 v125, 0x0

    :goto_66
    const-string v124, "Can\'t change skipControlDurationUs from %s to %s"

    move-wide/from16 v120, v1

    invoke-static/range {v120 .. v125}, Lcom/google/common/base/Preconditions;->c(JJLjava/lang/String;Z)V

    :cond_a1
    move-wide/from16 v1, v122

    iput-wide v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->s:J

    :goto_67
    if-nez v0, :cond_a2

    goto :goto_68

    :cond_a2
    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->t:Ljava/lang/String;

    if-eqz v1, :cond_a3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Can\'t change skipControlLabelId from %s to %s"

    iget-object v4, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->t:Ljava/lang/String;

    invoke-static {v1, v2, v4, v0}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    :cond_a3
    iput-object v0, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->t:Ljava/lang/String;

    :goto_68
    invoke-virtual {v15, v3, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    move-object/from16 v2, p4

    move-object/from16 v10, v36

    move-wide/from16 v45, v46

    move/from16 v47, v48

    move-wide/from16 v35, v69

    move-object/from16 v34, v71

    move-object/from16 v4, v82

    move-object/from16 v3, v83

    move-object/from16 v8, v87

    const/4 v11, 0x0

    goto/16 :goto_6e

    :cond_a5
    move-object/from16 v115, v11

    :cond_a6
    move-object/from16 v86, v0

    move-object/from16 v114, v4

    move-object/from16 v36, v5

    move-object/from16 v87, v8

    move-object/from16 v29, v10

    move-object/from16 v65, v15

    move-object/from16 v15, v83

    const/16 v16, 0x0

    move-object/from16 v83, v9

    const-string v0, "#"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    if-nez v41, :cond_a7

    move-object/from16 v38, v16

    goto :goto_69

    :cond_a7
    if-eqz v85, :cond_a8

    move-object/from16 v38, v85

    goto :goto_69

    :cond_a8
    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v38

    :goto_69
    add-long v0, v57, v42

    move-object/from16 v2, p4

    invoke-static {v14, v7, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v82

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    cmp-long v6, v46, v74

    if-nez v6, :cond_a9

    move-wide/from16 v43, v78

    goto :goto_6a

    :cond_a9
    if-eqz v68, :cond_aa

    if-nez v30, :cond_aa

    if-nez v5, :cond_aa

    new-instance v57, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v59, 0x0

    move-object/from16 v58, v3

    invoke-direct/range {v57 .. v64}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v57

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    move-wide/from16 v43, v61

    :goto_6a
    if-nez v29, :cond_ac

    invoke-virtual/range {v65 .. v65}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_ac

    invoke-virtual/range {v65 .. v65}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    const/4 v11, 0x0

    new-array v9, v11, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v9, Landroidx/media3/common/DrmInitData;

    move-object/from16 v10, v36

    invoke-direct {v9, v10, v8}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v28, :cond_ab

    invoke-static {v10, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v8

    move-object/from16 v28, v8

    :cond_ab
    move-object/from16 v40, v9

    goto :goto_6b

    :cond_ac
    move-object/from16 v10, v36

    const/4 v11, 0x0

    move-object/from16 v40, v29

    :goto_6b
    new-instance v31, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v30, :cond_ad

    move-object/from16 v33, v30

    :goto_6c
    move-object/from16 v32, v3

    move-object/from16 v42, v38

    move-wide/from16 v45, v46

    move/from16 v47, v48

    move-wide/from16 v38, v66

    move-wide/from16 v35, v69

    move-object/from16 v34, v71

    move-object/from16 v48, v87

    goto :goto_6d

    :cond_ad
    move-object/from16 v33, v5

    goto :goto_6c

    :goto_6d
    invoke-direct/range {v31 .. v48}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v5, v31

    move-wide/from16 v66, v38

    move-object/from16 v3, v83

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v8, v66, v35

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_ae

    add-long v43, v43, v45

    :cond_ae
    move-wide/from16 v61, v43

    move-wide/from16 v57, v0

    move-wide/from16 v66, v8

    move/from16 v24, v11

    move/from16 v48, v24

    move-object v13, v15

    move/from16 v6, v37

    move-object/from16 v29, v40

    move-object/from16 v37, v41

    move-object/from16 v15, v65

    move-wide/from16 v46, v74

    move-wide/from16 v69, v78

    move-object/from16 v14, v81

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v71, v115

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v3

    move-object v8, v4

    move-wide/from16 v39, v66

    move-object/from16 v65, v10

    move-object/from16 v3, v49

    move-object/from16 v49, v114

    move-object v10, v5

    move-object/from16 v5, v71

    goto/16 :goto_1

    :goto_6e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v3

    move/from16 v24, v11

    move-object v13, v15

    move-object/from16 v71, v34

    move-wide/from16 v69, v35

    move/from16 v6, v37

    move-object/from16 v37, v41

    move/from16 v48, v47

    move-object/from16 v3, v49

    move-object/from16 v15, v65

    move-object/from16 v14, v81

    move-object/from16 v12, v84

    move-object/from16 v38, v85

    move-object/from16 v11, v86

    move-object/from16 v49, v114

    move-object/from16 v5, v115

    move-object/from16 v65, v10

    move-wide/from16 v46, v45

    move-object v10, v8

    move-object v8, v4

    goto/16 :goto_1

    :cond_af
    move-object v3, v9

    move-object v8, v10

    move-object/from16 v86, v11

    move-object/from16 v84, v12

    move-object v15, v13

    move/from16 v11, v24

    move-object/from16 v114, v49

    const/16 v16, 0x0

    move-object v13, v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v11

    :goto_6f
    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b3

    move-object/from16 v2, v86

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    iget-wide v9, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->b:J

    cmp-long v5, v9, v74

    if-nez v5, :cond_b0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v9, v5

    add-long v9, v20, v9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    int-to-long v11, v5

    sub-long/2addr v9, v11

    :cond_b0
    iget v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->c:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_b2

    cmp-long v11, v25, v76

    if-eqz v11, :cond_b2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-static {v3}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    goto :goto_70

    :cond_b1
    move-object v5, v8

    :goto_70
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v80, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_71

    :cond_b2
    const/16 v80, 0x1

    :goto_71
    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->a:Landroid/net/Uri;

    new-instance v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v11, v4, v9, v10, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v86, v2

    const/4 v11, 0x0

    goto :goto_6f

    :cond_b3
    const/16 v80, 0x1

    if-eqz v114, :cond_b4

    move-object/from16 v11, v114

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->d:Landroid/net/Uri;

    if-nez v5, :cond_b5

    iget-object v7, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->c:Landroid/net/Uri;

    if-nez v7, :cond_b6

    :cond_b5
    if-eqz v5, :cond_bb

    iget-object v7, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->c:Landroid/net/Uri;

    if-nez v7, :cond_bb

    :cond_b6
    iget-wide v9, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->e:J

    cmp-long v7, v9, v76

    if-eqz v7, :cond_bb

    new-instance v85, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    iget-object v7, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->a:Ljava/lang/String;

    iget-object v11, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->c:Landroid/net/Uri;

    iget-wide v14, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->f:J

    move-object/from16 p0, v2

    move-object/from16 v83, v3

    iget-wide v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->g:J

    move-wide/from16 v93, v2

    iget-wide v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->h:J

    iget-object v12, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->i:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    iget-boolean v0, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->j:Z

    move-wide/from16 v95, v2

    iget-wide v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->k:J

    move-wide/from16 v99, v2

    iget-wide v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->l:J

    move/from16 v98, v0

    iget-object v0, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->m:Ljava/util/ArrayList;

    move-object/from16 v103, v0

    iget-object v0, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->n:Ljava/util/ArrayList;

    move-object/from16 v104, v0

    new-instance v0, Ljava/util/ArrayList;

    move-wide/from16 v101, v2

    iget-object v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->o:Ljava/lang/Boolean;

    if-eqz v2, :cond_b8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b7

    goto :goto_73

    :cond_b7
    const/16 v106, 0x0

    goto :goto_74

    :cond_b8
    :goto_73
    move/from16 v106, v80

    :goto_74
    iget-object v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->p:Ljava/lang/String;

    if-eqz v2, :cond_b9

    move-object/from16 v107, v2

    goto :goto_75

    :cond_b9
    move-object/from16 v107, v6

    :goto_75
    iget-object v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->q:Ljava/lang/String;

    if-eqz v2, :cond_ba

    move-object/from16 v108, v2

    goto :goto_76

    :cond_ba
    move-object/from16 v108, v13

    :goto_76
    iget-wide v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->r:J

    move-wide/from16 v109, v2

    iget-wide v2, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->s:J

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder;->t:Ljava/lang/String;

    move-object/from16 v105, v0

    move-wide/from16 v111, v2

    move-object/from16 v113, v4

    move-object/from16 v88, v5

    move-object/from16 v86, v7

    move-wide/from16 v89, v9

    move-object/from16 v87, v11

    move-object/from16 v97, v12

    move-wide/from16 v91, v14

    invoke-direct/range {v85 .. v113}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/List;ZJJLjava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    move-object/from16 v4, v85

    goto :goto_77

    :cond_bb
    move-object/from16 v34, v0

    move-object/from16 p0, v2

    move-object/from16 v83, v3

    move-object/from16 v4, v16

    :goto_77
    if-eqz v4, :cond_bc

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    move-object/from16 v2, p0

    move-object/from16 v0, v34

    move-object/from16 v3, v83

    goto/16 :goto_72

    :cond_bd
    move-object/from16 v34, v0

    move-object/from16 v83, v3

    cmp-long v0, v50, v78

    if-nez v0, :cond_be

    if-eqz p1, :cond_be

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->p:Z

    if-eqz v2, :cond_be

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    move-wide/from16 v50, v2

    :cond_be
    new-instance v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    cmp-long v0, v50, v78

    if-eqz v0, :cond_bf

    move/from16 v29, v80

    :goto_78
    move-object/from16 v35, v1

    move-object/from16 v32, v8

    move/from16 v15, v19

    move-object/from16 v36, v30

    move/from16 v10, v52

    move-wide/from16 v13, v53

    move-object/from16 v33, v81

    move-object/from16 v31, v83

    move-object/from16 v12, v84

    move/from16 v19, v17

    move-object/from16 v30, v28

    move-wide/from16 v16, v50

    move/from16 v28, v23

    move-wide/from16 v23, v55

    goto :goto_79

    :cond_bf
    const/16 v29, 0x0

    goto :goto_78

    :goto_79
    invoke-direct/range {v9 .. v36}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;)V

    return-object v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x13683 -> :sswitch_2
        0x251681 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_e
        -0x6ddab8e6 -> :sswitch_d
        -0x8e0f436 -> :sswitch_c
        -0x22a979d -> :sswitch_b
        0x17ad642d -> :sswitch_a
        0x32acec39 -> :sswitch_9
        0x3f8488e0 -> :sswitch_8
        0x4bf74f81 -> :sswitch_7
        0x57c501cc -> :sswitch_6
        0x6837ce7f -> :sswitch_5
        0x6c2295e3 -> :sswitch_4
        0x7c029fc0 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static f(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .locals 49

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->a()Z

    move-result v12

    const-string v16, "application/x-mpegURL"

    const/16 v17, 0x0

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    move-object/from16 v18, v10

    const-string v10, "/"

    move/from16 v20, v11

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    move/from16 v21, v12

    const-string v12, ","

    move/from16 v22, v13

    if-eqz v21, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->b()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v24, v9

    const-string v9, "#EXT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v9, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v25, v5

    const-string v5, "#EXT-X-DEFINE"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-static {v13, v11, v5, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    invoke-static {v13, v6, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, p1

    goto/16 :goto_3

    :cond_1
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    invoke-static {v13, v5, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;Ljava/util/HashMap;)V

    move-object/from16 v11, p1

    invoke-virtual {v11, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v14, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QUERYPARAM \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found in playlist URI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3
    move-object/from16 v11, p1

    const-string v5, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    move-object/from16 v37, v4

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v34, v15

    move/from16 v11, v20

    const/4 v13, 0x1

    goto/16 :goto_1b

    :cond_4
    const-string v5, "#EXT-X-MEDIA"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v5, "#EXT-X-SESSION-KEY"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    const-string v6, "identity"

    invoke-static {v13, v5, v6, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v5

    if-eqz v5, :cond_9

    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v13, v6, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "SAMPLE-AES-CENC"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "SAMPLE-AES-CTR"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "cbcs"

    goto :goto_2

    :cond_7
    :goto_1
    const-string v6, "cenc"

    :goto_2
    new-instance v9, Landroidx/media3/common/DrmInitData;

    filled-new-array {v5}, [Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v5

    invoke-direct {v9, v6, v5}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v5, "#EXT-X-STREAM-INF"

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    :goto_3
    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    move-object/from16 v37, v4

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v34, v15

    :goto_4
    move/from16 v11, v20

    move/from16 v13, v22

    goto/16 :goto_1b

    :cond_a
    :goto_5
    const-string v5, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    or-int v5, v20, v5

    if-eqz v9, :cond_b

    const/16 v20, 0x4000

    move/from16 v26, v20

    move/from16 v20, v5

    move/from16 v5, v26

    :goto_6
    move/from16 v26, v9

    goto :goto_7

    :cond_b
    move/from16 v20, v5

    move/from16 v5, v17

    goto :goto_6

    :goto_7
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h:Ljava/util/regex/Pattern;

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v13, v9, v11, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c:Ljava/util/regex/Pattern;

    invoke-static {v0, v13, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v27

    if-eqz v27, :cond_c

    move-object/from16 v34, v15

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_8

    :cond_c
    move-object/from16 v34, v15

    const/4 v11, -0x1

    :goto_8
    sget-object v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j:Ljava/util/regex/Pattern;

    move-object/from16 v35, v8

    const/4 v8, 0x0

    invoke-static {v13, v15, v8, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v36, v7

    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k:Ljava/util/regex/Pattern;

    invoke-static {v13, v7, v8, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v37, v4

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l:Ljava/util/regex/Pattern;

    invoke-static {v13, v4, v8, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v4, v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v17

    const/4 v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v8, v4, v17

    array-length v10, v4

    move-object/from16 v27, v4

    const/4 v4, 0x1

    if-le v10, v4, :cond_d

    aget-object v10, v27, v4

    move-object/from16 v38, v2

    const/4 v4, 0x2

    goto :goto_a

    :cond_d
    move-object/from16 v38, v2

    const/4 v4, 0x2

    :goto_9
    const/4 v10, 0x0

    goto :goto_a

    :cond_e
    move-object/from16 v38, v2

    const/4 v4, 0x2

    const/4 v8, 0x0

    goto :goto_9

    :goto_a
    invoke-static {v4, v7}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    :goto_b
    move-object/from16 v39, v3

    goto/16 :goto_16

    :cond_10
    const-string v4, "db4"

    move-object/from16 v27, v2

    const-string v2, "db1p"

    if-nez v8, :cond_11

    move-object/from16 v39, v3

    goto :goto_c

    :cond_11
    if-eqz v15, :cond_f

    if-nez v10, :cond_12

    goto :goto_b

    :cond_12
    move-object/from16 v39, v3

    const-string v3, "PQ"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_13
    const-string v3, "SDR"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "db2g"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_14
    const-string v3, "HLG"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_16

    :cond_15
    :goto_c
    if-nez v7, :cond_16

    :goto_d
    const/4 v2, 0x0

    goto :goto_11

    :cond_16
    invoke-static {v7, v8}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_d

    :cond_17
    const-string v3, "dvhe"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v15, 0x6

    if-nez v3, :cond_1b

    const-string v3, "dvh1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "dav1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_f

    :cond_18
    if-eqz v10, :cond_1a

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v10, v15

    const/4 v2, 0x2

    :goto_e
    const/4 v3, -0x1

    goto :goto_10

    :cond_19
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v10, 0x7

    goto :goto_10

    :cond_1a
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v10, -0x1

    const/4 v15, -0x1

    goto :goto_10

    :cond_1b
    :goto_f
    move v10, v15

    const/4 v2, 0x1

    goto :goto_e

    :goto_10
    if-ne v15, v3, :cond_1c

    goto :goto_d

    :cond_1c
    new-instance v3, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iput v15, v3, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iput v2, v3, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iput v10, v3, Landroidx/media3/common/ColorInfo$Builder;->c:I

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    :goto_11
    if-eqz v8, :cond_1d

    goto :goto_12

    :cond_1d
    move-object/from16 v8, v27

    :goto_12
    invoke-static {v7}, Landroidx/media3/common/util/Util;->c0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_1f

    move-object/from16 v27, v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_14

    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    move/from16 v10, v17

    :goto_13
    if-ge v10, v7, :cond_22

    aget-object v15, v3, v10

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v27, v2

    invoke-static/range {v19 .. v19}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v19, v3

    const/4 v3, 0x2

    if-eq v3, v2, :cond_21

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v19

    move-object/from16 v2, v27

    goto :goto_13

    :cond_22
    move-object/from16 v27, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    if-eqz v2, :cond_23

    invoke-static {v8, v12, v2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_15

    :cond_23
    move-object v7, v8

    :goto_15
    move-object/from16 v2, v27

    goto :goto_17

    :cond_24
    :goto_16
    const/4 v2, 0x0

    :goto_17
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    invoke-static {v13, v3, v8, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v4, "x"

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v23, 0x1

    aget-object v3, v3, v23

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v4, :cond_25

    if-gtz v3, :cond_26

    :cond_25
    const/4 v3, -0x1

    const/4 v4, -0x1

    :cond_26
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n:Ljava/util/regex/Pattern;

    const/4 v10, 0x0

    invoke-static {v13, v8, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_27

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_18

    :cond_27
    const/high16 v8, -0x40800000    # -1.0f

    :goto_18
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v47

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v43

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v44

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v45

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v46

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p:Ljava/util/regex/Pattern;

    invoke-static {v13, v12, v10, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v48

    if-eqz v26, :cond_28

    invoke-static {v13, v6, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_19
    move-object/from16 v41, v6

    goto :goto_1a

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->a()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_19

    :goto_1a
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iput v11, v6, Landroidx/media3/common/Format$Builder;->h:I

    iput v9, v6, Landroidx/media3/common/Format$Builder;->i:I

    iput v4, v6, Landroidx/media3/common/Format$Builder;->u:I

    iput v3, v6, Landroidx/media3/common/Format$Builder;->v:I

    iput v8, v6, Landroidx/media3/common/Format$Builder;->y:F

    iput v5, v6, Landroidx/media3/common/Format$Builder;->f:I

    iput-object v2, v6, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v40, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-object/from16 v42, v2

    invoke-direct/range {v40 .. v48}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v6, v41

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v38

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_29

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    new-instance v27, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    move/from16 v29, v9

    move/from16 v28, v11

    move-object/from16 v30, v43

    move-object/from16 v31, v44

    move-object/from16 v32, v45

    move-object/from16 v33, v46

    invoke-direct/range {v27 .. v33}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :goto_1b
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v10, v18

    move-object/from16 v9, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v34

    move-object/from16 v8, v35

    move-object/from16 v7, v36

    move-object/from16 v4, v37

    goto/16 :goto_0

    :cond_2a
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2b
    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    move-object/from16 v37, v4

    move-object/from16 v25, v5

    move-object/from16 v36, v7

    move-object/from16 v35, v8

    move-object/from16 v24, v9

    move-object/from16 v34, v15

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, v17

    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v9, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->a:Landroid/net/Uri;

    iget-object v13, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->b:Landroidx/media3/common/Format;

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, v13, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-nez v9, :cond_2c

    const/4 v9, 0x1

    goto :goto_1d

    :cond_2c
    move/from16 v9, v17

    :goto_1d
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v9, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    iget-object v15, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->a:Landroid/net/Uri;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v38, v3

    const/4 v3, 0x0

    invoke-direct {v9, v3, v3, v15}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Landroidx/media3/common/Metadata;

    move-object/from16 p0, v5

    const/4 v15, 0x1

    new-array v5, v15, [Landroidx/media3/common/Metadata$Entry;

    aput-object v9, v5, v17

    invoke-direct {v3, v5}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    invoke-virtual {v13}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput-object v3, v5, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v3, Landroidx/media3/common/Format;

    invoke-direct {v3, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v39, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v5, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->a:Landroid/net/Uri;

    iget-object v9, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->c:Ljava/lang/String;

    iget-object v13, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->d:Ljava/lang/String;

    iget-object v15, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->e:Ljava/lang/String;

    move-object/from16 v41, v3

    iget-object v3, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->f:Ljava/lang/String;

    move-object/from16 v45, v3

    iget-object v3, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->g:Ljava/lang/String;

    iget-object v8, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->h:Ljava/lang/String;

    move-object/from16 v46, v3

    move-object/from16 v40, v5

    move-object/from16 v47, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v13

    move-object/from16 v44, v15

    invoke-direct/range {v39 .. v47}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v39

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2d
    move-object/from16 v38, v3

    move-object/from16 p0, v5

    :goto_1e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p0

    move-object/from16 v3, v38

    goto :goto_1c

    :cond_2e
    move/from16 v7, v17

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1f
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4c

    move-object/from16 v8, v37

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->X:Ljava/util/regex/Pattern;

    invoke-static {v9, v13, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v11, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p0, v3

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q:Ljava/util/regex/Pattern;

    move-object/from16 v32, v4

    const/4 v4, 0x0

    invoke-static {v9, v3, v4, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v31

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v4, ":"

    invoke-static {v13, v4, v15}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iput-object v15, v3, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b0:Ljava/util/regex/Pattern;

    invoke-static {v0, v9, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v4

    move/from16 v26, v4

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    invoke-static {v0, v9, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_2f

    or-int/lit8 v4, v26, 0x2

    move/from16 v26, v4

    :cond_2f
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a0:Ljava/util/regex/Pattern;

    invoke-static {v0, v9, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_30

    or-int/lit8 v4, v26, 0x4

    goto :goto_20

    :cond_30
    move/from16 v4, v26

    :goto_20
    iput v4, v3, Landroidx/media3/common/Format$Builder;->e:I

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Y:Ljava/util/regex/Pattern;

    move-object/from16 v33, v5

    const/4 v5, 0x0

    invoke-static {v9, v4, v5, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    move/from16 v37, v7

    move/from16 v5, v17

    goto :goto_23

    :cond_31
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4, v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "public.accessibility.describes-video"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Util;->m(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/16 v5, 0x200

    :goto_21
    move/from16 v37, v7

    goto :goto_22

    :cond_32
    move/from16 v5, v17

    goto :goto_21

    :goto_22
    const-string v7, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {v7, v4}, Landroidx/media3/common/util/Util;->m(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    or-int/lit16 v5, v5, 0x1000

    :cond_33
    const-string v7, "public.accessibility.describes-music-and-sound"

    invoke-static {v7, v4}, Landroidx/media3/common/util/Util;->m(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    or-int/lit16 v5, v5, 0x400

    :cond_34
    const-string v7, "public.easy-to-read"

    invoke-static {v7, v4}, Landroidx/media3/common/util/Util;->m(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    or-int/lit16 v5, v5, 0x2000

    :cond_35
    :goto_23
    iput v5, v3, Landroidx/media3/common/Format$Builder;->f:I

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->U:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v9, v4, v5, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    invoke-static {v9, v6, v5, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    const/16 v27, 0x0

    goto :goto_24

    :cond_36
    invoke-static {v1, v4}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v27, v5

    :goto_24
    new-instance v4, Landroidx/media3/common/Metadata;

    new-instance v5, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v5, v13, v15, v7}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v38, v1

    const/4 v7, 0x1

    new-array v1, v7, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v1, v17

    invoke-direct {v4, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    invoke-static {v9, v1, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v7, 0x3

    sparse-switch v5, :sswitch_data_0

    :goto_25
    const/4 v1, -0x1

    goto :goto_26

    :sswitch_0
    const-string v5, "VIDEO"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_25

    :cond_37
    move v1, v7

    goto :goto_26

    :sswitch_1
    const-string v5, "AUDIO"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_25

    :cond_38
    const/4 v1, 0x2

    goto :goto_26

    :sswitch_2
    const-string v5, "CLOSED-CAPTIONS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_25

    :cond_39
    const/4 v1, 0x1

    goto :goto_26

    :sswitch_3
    const-string v5, "SUBTITLES"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_25

    :cond_3a
    move/from16 v1, v17

    :goto_26
    packed-switch v1, :pswitch_data_0

    :goto_27
    move-object/from16 v9, v24

    move-object/from16 v5, v35

    goto/16 :goto_33

    :pswitch_0
    move/from16 v1, v17

    :goto_28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3c

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v7, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->c:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_29

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    const/4 v5, 0x0

    :goto_29
    if-eqz v5, :cond_3d

    iget-object v1, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->b:Landroidx/media3/common/Format;

    iget-object v5, v1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v7, v5}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget v5, v1, Landroidx/media3/common/Format;->v:I

    iput v5, v3, Landroidx/media3/common/Format$Builder;->u:I

    iget v5, v1, Landroidx/media3/common/Format;->w:I

    iput v5, v3, Landroidx/media3/common/Format$Builder;->v:I

    iget v1, v1, Landroidx/media3/common/Format;->z:F

    iput v1, v3, Landroidx/media3/common/Format$Builder;->y:F

    :cond_3d
    if-nez v27, :cond_3e

    goto :goto_27

    :cond_3e
    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v26, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v28, v1

    move-object/from16 v29, v13

    move-object/from16 v30, v15

    invoke-direct/range {v26 .. v31}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v26

    move-object/from16 v1, v36

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :pswitch_1
    move-object v5, v13

    move-object/from16 v30, v15

    move-object/from16 v1, v36

    move/from16 v7, v17

    :goto_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_40

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v15, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->d:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3f

    goto :goto_2b

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_40
    const/4 v13, 0x0

    :goto_2b
    if-eqz v13, :cond_41

    iget-object v7, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->b:Landroidx/media3/common/Format;

    iget-object v7, v7, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v15, v7}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2c

    :cond_41
    const/4 v7, 0x0

    :goto_2c
    sget-object v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i:Ljava/util/regex/Pattern;

    move-object/from16 v36, v1

    const/4 v1, 0x0

    invoke-static {v9, v15, v1, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_42

    sget-object v15, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v15, 0x2

    invoke-virtual {v9, v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    aget-object v15, v21, v17

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v3, Landroidx/media3/common/Format$Builder;->F:I

    const-string v15, "audio/eac3"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_42

    const-string v15, "/JOC"

    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    const-string v7, "ec+3"

    iput-object v7, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    const-string v7, "audio/eac3-joc"

    :cond_42
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    if-eqz v27, :cond_44

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v26, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v31}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v26

    move-object/from16 v5, v35

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    move-object/from16 v9, v24

    goto/16 :goto_33

    :cond_44
    move-object/from16 v5, v35

    if-eqz v13, :cond_43

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v3, p0

    move-object/from16 v33, v4

    :goto_2d
    move-object/from16 v9, v24

    goto/16 :goto_34

    :pswitch_2
    move-object/from16 v5, v35

    const/4 v1, 0x0

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Z:Ljava/util/regex/Pattern;

    invoke-static {v9, v4, v14, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "CC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    const/4 v15, 0x2

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "application/cea-608"

    const/4 v9, 0x7

    goto :goto_2e

    :cond_45
    const/4 v9, 0x7

    const/4 v15, 0x2

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "application/cea-708"

    :goto_2e
    if-nez p0, :cond_46

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2f

    :cond_46
    move-object/from16 v13, p0

    :goto_2f
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v4, v3, Landroidx/media3/common/Format$Builder;->K:I

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v13

    goto :goto_2d

    :pswitch_3
    move-object/from16 v30, v15

    move-object/from16 v5, v35

    move/from16 v1, v17

    :goto_30
    const/4 v15, 0x2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_48

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v15, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->e:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    goto :goto_31

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_48
    const/4 v9, 0x0

    :goto_31
    if-eqz v9, :cond_49

    iget-object v1, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->b:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v7, v1}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_49
    const/4 v1, 0x0

    :goto_32
    if-nez v1, :cond_4a

    const-string v1, "text/vtt"

    :cond_4a
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    if-eqz v27, :cond_4b

    new-instance v26, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v28, v1

    move-object/from16 v29, v13

    invoke-direct/range {v26 .. v31}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v24

    move-object/from16 v1, v26

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4b
    move-object/from16 v9, v24

    const-string v1, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_33
    move-object/from16 v3, p0

    :goto_34
    add-int/lit8 v7, v37, 0x1

    move-object/from16 v35, v5

    move-object/from16 v37, v8

    move-object/from16 v24, v9

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move-object/from16 v1, v38

    goto/16 :goto_1f

    :cond_4c
    move-object/from16 p0, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move-object/from16 v9, v24

    move-object/from16 v5, v35

    if-eqz v20, :cond_4d

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v12, v3

    goto :goto_35

    :cond_4d
    move-object/from16 v12, p0

    :goto_35
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v8, v5

    move-object/from16 v10, v18

    move/from16 v13, v22

    move-object/from16 v5, v25

    move-object/from16 v6, v32

    move-object/from16 v11, v33

    move-object/from16 v15, v34

    move-object/from16 v7, v36

    invoke-direct/range {v3 .. v15}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;DLandroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)D
    .locals 0

    invoke-static {p4, p0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static i(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;
    .locals 0

    invoke-static {p4, p0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3, p4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t match "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static l(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B0:Ljava/util/regex/Pattern;

    invoke-static {p2, p0, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;->a(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "duplicate variable name \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroidx/media3/datasource/DataSourceInputStream;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-direct {v1, v4, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xef

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    const/16 v3, 0xbf

    if-eq v2, v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_1
    const/4 v6, 0x7

    if-ge v5, v6, :cond_4

    const-string v6, "#EXTM3U"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v2, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eq v2, v3, :cond_5

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Landroidx/media3/common/util/Util;->M(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-static {v2}, Landroidx/media3/common/util/Util;->M(I)Z

    move-result v4

    :cond_6
    :goto_3
    if-eqz v4, :cond_c

    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {p0, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {p0, p1, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_8
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXTINF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXT-X-KEY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXT-X-BYTERANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "#EXT-X-ENDLIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v2, p0, v3, p1, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$MatcherCache;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V

    return-object p0

    :cond_b
    invoke-static {v0}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V

    const-string p0, "Failed to parse the playlist, could not identify any tags."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_c
    :try_start_2
    const-string p0, "Input does not start with the #EXTM3U header."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    invoke-static {v0}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V

    throw p0
.end method
