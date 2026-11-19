.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrmSessionReference"
.end annotation


# static fields
.field public static final d0:Lmt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmt;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmt;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->d0:Lmt;

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
