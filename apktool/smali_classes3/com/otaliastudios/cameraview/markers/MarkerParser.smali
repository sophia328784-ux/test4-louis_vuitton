.class public Lcom/otaliastudios/cameraview/markers/MarkerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/markers/MarkerParser;->a:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/markers/MarkerParser;->a:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
