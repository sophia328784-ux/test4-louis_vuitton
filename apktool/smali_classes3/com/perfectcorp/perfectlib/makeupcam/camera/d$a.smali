.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/i;Lcom/perfectcorp/perfectlib/makeupcam/camera/f;Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iput p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->c:I

    iput p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->d:I

    iput p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->e:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$a;->file_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->f:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->a()I

    move-result p1

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->EYE_BLINKING_EVENT_ONCE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->MOUTH_OPENING_EVENT_ONCE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;->MOUTH_CLOSING_EVENT_ONCE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p4

    :goto_1
    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->g:Z

    iget-object p1, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$d;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p4, p5

    :goto_2
    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->h:Z

    return-void
.end method
