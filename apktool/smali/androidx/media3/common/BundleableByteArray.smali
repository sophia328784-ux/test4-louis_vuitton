.class public final Landroidx/media3/common/BundleableByteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/BundleableByteArray$InProcessBinder;,
        Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;,
        Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:[B

.field public final b:Landroidx/media3/common/BundleableByteArray$InProcessBinder;

.field public c:Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

.field public d:Landroidx/media3/common/BundleableByteArray$SplitArrayRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/BundleableByteArray;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/BundleableByteArray;->f:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/BundleableByteArray;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/BundleableByteArray;->a:[B

    new-instance p1, Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    invoke-direct {p1, p0}, Landroidx/media3/common/BundleableByteArray$InProcessBinder;-><init>(Landroidx/media3/common/BundleableByteArray;)V

    iput-object p1, p0, Landroidx/media3/common/BundleableByteArray;->b:Landroidx/media3/common/BundleableByteArray$InProcessBinder;

    return-void
.end method
