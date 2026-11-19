.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;
    }
.end annotation


# instance fields
.field public transient a:I

.field public transient b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

.field trigger_event:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->trigger_event:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->ALWAYS_ON:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->d(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a:I

    :cond_0
    return v0
.end method
