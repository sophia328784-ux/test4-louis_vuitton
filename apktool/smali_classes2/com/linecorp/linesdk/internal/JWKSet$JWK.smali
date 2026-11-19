.class public Lcom/linecorp/linesdk/internal/JWKSet$JWK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/JWKSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JWK"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JWK{keyType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', algorithm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', use=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', keyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', curve=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', x=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', y=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;->g:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
