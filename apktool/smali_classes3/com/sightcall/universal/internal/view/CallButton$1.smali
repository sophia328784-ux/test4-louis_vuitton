.class final enum Lcom/sightcall/universal/internal/view/CallButton$1;
.super Lcom/sightcall/universal/internal/view/CallButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/CallButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/String;[I)V
    .locals 7

    const/4 v2, 0x2

    const-string v5, "toggle-camera"

    const-string v1, "VIDEO_SOURCE"

    move-object v0, p0

    move v3, p1

    move-object v6, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/view/CallButton$1;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/sightcall/universal/internal/view/CallButton;-><init>(Ljava/lang/String;II[ILjava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/Context;Lcom/sightcall/universal/internal/view/CallButtonBar;)Lcom/sightcall/universal/internal/view/CallButtonImageView;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    if-ne p0, v0, :cond_0

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/internal/view/CallButton;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sightcall/universal/internal/view/CallButton;->inflate(Landroid/content/Context;Lcom/sightcall/universal/internal/view/CallButtonBar;)Lcom/sightcall/universal/internal/view/CallButtonImageView;

    move-result-object p0

    return-object p0
.end method
