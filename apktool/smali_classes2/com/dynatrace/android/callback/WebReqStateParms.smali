.class abstract Lcom/dynatrace/android/callback/WebReqStateParms;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

.field public c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Exception;

.field public k:Ljava/util/AbstractMap;

.field public l:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->f:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    iput-wide v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->j:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->k:Ljava/util/AbstractMap;

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->l:Ljava/util/AbstractMap;

    iput-object p1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    iput-object p2, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    const/4 p1, 0x0

    iput p1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    new-instance v0, Lcom/dynatrace/android/callback/ServerTimingAnalyzer;

    invoke-direct {v0}, Lcom/dynatrace/android/callback/ServerTimingAnalyzer;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/dynatrace/android/callback/ServerTimingAnalyzer;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, v0, Lcom/dynatrace/android/callback/ServerTimingAnalyzer;->b:I

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->i:Ljava/lang/String;

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/net/URL;
.end method

.method public abstract g()Lcom/dynatrace/agent/events/enrichment/WebContext;
.end method

.method public abstract h()Z
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->c:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/WebReqStateParms;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dynatrace/android/callback/WebReqStateParms;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->b:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-static {p0, v2, v3}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
