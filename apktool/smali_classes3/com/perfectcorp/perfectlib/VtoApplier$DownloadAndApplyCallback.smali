.class public interface abstract Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadAndApplyCallback"
.end annotation


# static fields
.field public static final NOP:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    return-void
.end method


# virtual methods
.method public abstract downloadProgress(D)V
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
