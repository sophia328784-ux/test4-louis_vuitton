.class public Lcom/linecorp/linesdk/Scope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/HashMap;

.field public static final c:Lcom/linecorp/linesdk/Scope;

.field public static final d:Lcom/linecorp/linesdk/Scope;

.field public static final e:Lcom/linecorp/linesdk/Scope;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->c:Lcom/linecorp/linesdk/Scope;

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "friends"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "groups"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "message.write"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->d:Lcom/linecorp/linesdk/Scope;

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/Scope;->e:Lcom/linecorp/linesdk/Scope;

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "phone"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "gender"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "birthdate"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "address"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "real_name"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "onetime.share"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchat.term.agreement.status"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchat.create.join"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchat.info"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchatplug.managament"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchatplug.info"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchatplug.profile"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchatplug.send.message"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/linecorp/linesdk/Scope;

    const-string v1, "openchatplug.receive.message.and.event"

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/Scope;->a:Ljava/lang/String;

    sget-object v0, Lcom/linecorp/linesdk/Scope;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/Scope;

    iget-object v1, v1, Lcom/linecorp/linesdk/Scope;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/linecorp/linesdk/Scope;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linecorp/linesdk/Scope;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/linecorp/linesdk/Scope;

    invoke-direct {v2, v1}, Lcom/linecorp/linesdk/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/linecorp/linesdk/Scope;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/Scope;

    iget-object p0, p0, Lcom/linecorp/linesdk/Scope;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/Scope;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/Scope;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope{code=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linecorp/linesdk/Scope;->a:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
