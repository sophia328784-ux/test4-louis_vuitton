.class public Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/linecorp/linesdk/LineIdToken;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->a:Lcom/linecorp/linesdk/LineIdToken;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->a:Lcom/linecorp/linesdk/LineIdToken;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but received: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
