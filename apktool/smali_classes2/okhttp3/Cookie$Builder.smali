.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lokhttp3/Cookie$Builder;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/Cookie;",
        "cookie",
        "(Lokhttp3/Cookie;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:J

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public i:Z

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    .line 48
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->c:J

    .line 49
    const-string v0, "/"

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cookie;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lokhttp3/Cookie$Builder;-><init>()V

    iget-object v0, p1, Lokhttp3/Cookie;->a:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->a:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie;->b:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->b:Ljava/lang/String;

    iget-wide v0, p1, Lokhttp3/Cookie;->c:J

    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->c:J

    iget-object v0, p1, Lokhttp3/Cookie;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->d:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Cookie;->e:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->e:Ljava/lang/String;

    iget-boolean v0, p1, Lokhttp3/Cookie;->f:Z

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->f:Z

    iget-boolean v0, p1, Lokhttp3/Cookie;->g:Z

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->g:Z

    iget-boolean v0, p1, Lokhttp3/Cookie;->h:Z

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->h:Z

    iget-boolean v0, p1, Lokhttp3/Cookie;->i:Z

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->i:Z

    iget-object p1, p1, Lokhttp3/Cookie;->j:Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/Cookie$Builder;->j:Ljava/lang/String;

    return-void
.end method
