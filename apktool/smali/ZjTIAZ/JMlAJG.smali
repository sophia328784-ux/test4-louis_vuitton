.class public LZjTIAZ/JMlAJG;
.super Ljava/util/Observable;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010gM@QV\u0006D@Yt|y={iE^f"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/JMlAJG;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-string v0, "JMlAJG"

    iput-object v0, p0, LZjTIAZ/JMlAJG;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 13

    const/4 v1, 0x0

    :try_start_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    const/16 v3, 0x81

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    const/16 v3, 0x12

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    const/16 v3, 0x91

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v2, 0xe1

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v5, v1

    move v10, v5

    move v11, v10

    move v12, v11

    :goto_0
    if-ge v5, v4, :cond_4

    aget-char v6, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    new-instance v6, LZjTIAZ/EACilt;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget-object v4, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LZjTIAZ/DeHqqG;->e(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0}, LZjTIAZ/DeHqqG;->b(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct/range {v6 .. v12}, LZjTIAZ/EACilt;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {p0, v6}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_5
    instance-of v0, p2, Landroid/widget/EditText;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    new-instance v2, LZjTIAZ/DmNgem;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "1"

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v6, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LZjTIAZ/DeHqqG;->e(Ljava/lang/String;)I

    move-result v6

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2}, LZjTIAZ/DeHqqG;->b(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v8}, LZjTIAZ/DmNgem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_6
    instance-of p2, p1, Landroid/widget/EditText;

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    new-instance v2, LZjTIAZ/DmNgem;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "3"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget-object v0, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LZjTIAZ/DeHqqG;->e(Ljava/lang/String;)I

    move-result v6

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, LZjTIAZ/DeHqqG;->b(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v8}, LZjTIAZ/DmNgem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    return-void

    :goto_3
    sget-object p2, LZjTIAZ/JMlAJG;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object p1, v0, v1

    iget-object p0, p0, LZjTIAZ/JMlAJG;->b:Ljava/lang/String;

    invoke-static {p0, p2, v0}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
