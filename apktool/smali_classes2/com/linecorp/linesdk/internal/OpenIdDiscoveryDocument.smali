.class public Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->e:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->f:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenIdDiscoveryDocument{issuer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', authorizationEndpoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', tokenEndpoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', jwksUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', responseTypesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectTypesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idTokenSigningAlgValuesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
