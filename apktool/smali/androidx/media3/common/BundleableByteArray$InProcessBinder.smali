.class final Landroidx/media3/common/BundleableByteArray$InProcessBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/BundleableByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InProcessBinder"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/common/BundleableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/BundleableByteArray;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/BundleableByteArray$InProcessBinder;->a:Landroidx/media3/common/BundleableByteArray;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
