.class LZjTIAZ/CHrESI;
.super Ljava/util/Observable;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZjTIAZ/CHrESI;->e:Z

    iput-boolean v0, p0, LZjTIAZ/CHrESI;->f:Z

    iput-object p1, p0, LZjTIAZ/CHrESI;->c:Landroid/content/Context;

    iput p2, p0, LZjTIAZ/CHrESI;->b:I

    iput-object p3, p0, LZjTIAZ/CHrESI;->g:Ljava/lang/String;

    iput-boolean p4, p0, LZjTIAZ/CHrESI;->d:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, LZjTIAZ/CHrESI;->e:Z

    iput-boolean v0, p0, LZjTIAZ/CHrESI;->f:Z

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p4, :cond_0

    if-ltz p2, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_0

    add-int v2, p2, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    const/4 p2, 0x1

    if-le p4, p2, :cond_3

    :try_start_2
    iget-object p3, p0, LZjTIAZ/CHrESI;->c:Landroid/content/Context;

    const-string p4, "mI|CQ]NRu"

    invoke-static {p4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result p4

    if-lez p4, :cond_1

    invoke-virtual {p3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean p2, p0, LZjTIAZ/CHrESI;->e:Z

    goto :goto_1

    :cond_2
    iput-boolean p2, p0, LZjTIAZ/CHrESI;->f:Z

    :goto_1
    const/4 p3, -0x1

    goto :goto_2

    :cond_3
    if-ne p4, p2, :cond_4

    const-string v2, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p3, 0x3

    goto :goto_2

    :cond_4
    if-lt p3, p2, :cond_5

    const/4 p3, 0x4

    goto :goto_2

    :cond_5
    if-ne p4, p2, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x5

    goto :goto_2

    :cond_6
    move p3, v0

    :goto_2
    iget-boolean p4, p0, LZjTIAZ/CHrESI;->e:Z

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    move p2, p3

    :goto_3
    iget-boolean p3, p0, LZjTIAZ/CHrESI;->f:Z

    if-eqz p3, :cond_8

    const/4 p2, 0x2

    :cond_8
    iget-boolean p3, p0, LZjTIAZ/CHrESI;->d:Z

    if-eqz p3, :cond_9

    move v6, v0

    goto :goto_4

    :cond_9
    move v6, p2

    :goto_4
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, LZjTIAZ/DmNgem;

    const-string v4, "2"

    iget v5, p0, LZjTIAZ/CHrESI;->b:I

    iget-object v7, p0, LZjTIAZ/CHrESI;->g:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, LZjTIAZ/DmNgem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method
