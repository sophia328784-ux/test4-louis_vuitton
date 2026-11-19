.class public Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->a:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<Name>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Name>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<PicUrl>"

    invoke-static {v0, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</PicUrl>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<Source>"

    invoke-static {v0, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Source>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->f:Z

    if-eqz v2, :cond_6

    const-string v2, "<Url>"

    invoke-static {v0, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v1

    :cond_4
    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Url>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<Metadata>"

    invoke-static {v0, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->d:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/model/cling_callback/playqueue/xml/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</Metadata>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    :goto_1
    return-object v1
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/playqueue/keymappingqueue/a;->a:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
