.class public abstract Lcom/perfectcorp/common/network/DownloadKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/DownloadKey$Guid;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/common/network/DownloadTask$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/network/DownloadKey$1;

    invoke-direct {v0}, Lcom/perfectcorp/common/network/DownloadKey$1;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/network/DownloadKey;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    return-void
.end method
