.class final Lretrofit2/RequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestFactory$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Lokhttp3/HttpUrl;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lokhttp3/Headers;

.field public final g:Lokhttp3/MediaType;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:[Lretrofit2/ParameterHandler;

.field public final l:Z


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->b:Ljava/lang/Class;

    iput-object v0, p0, Lretrofit2/RequestFactory;->a:Ljava/lang/Class;

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lretrofit2/RequestFactory;->b:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->a:Lretrofit2/Retrofit;

    iget-object v0, v0, Lretrofit2/Retrofit;->c:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/RequestFactory;->c:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->o:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/RequestFactory;->d:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->s:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/RequestFactory;->e:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->t:Lokhttp3/Headers;

    iput-object v0, p0, Lretrofit2/RequestFactory;->f:Lokhttp3/Headers;

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->u:Lokhttp3/MediaType;

    iput-object v0, p0, Lretrofit2/RequestFactory;->g:Lokhttp3/MediaType;

    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->p:Z

    iput-boolean v0, p0, Lretrofit2/RequestFactory;->h:Z

    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->q:Z

    iput-boolean v0, p0, Lretrofit2/RequestFactory;->i:Z

    iget-boolean v0, p1, Lretrofit2/RequestFactory$Builder;->r:Z

    iput-boolean v0, p0, Lretrofit2/RequestFactory;->j:Z

    iget-object v0, p1, Lretrofit2/RequestFactory$Builder;->w:[Lretrofit2/ParameterHandler;

    iput-object v0, p0, Lretrofit2/RequestFactory;->k:[Lretrofit2/ParameterHandler;

    iget-boolean p1, p1, Lretrofit2/RequestFactory$Builder;->x:Z

    iput-boolean p1, p0, Lretrofit2/RequestFactory;->l:Z

    return-void
.end method
