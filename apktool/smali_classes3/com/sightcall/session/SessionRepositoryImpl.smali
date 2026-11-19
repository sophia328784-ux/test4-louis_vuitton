.class public final Lcom/sightcall/session/SessionRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/session/SessionRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\tH\u0016J\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012J\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/session/SessionRepositoryImpl;",
        "Lcom/sightcall/session/SessionRepository;",
        "referenceDataSource",
        "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;",
        "<init>",
        "(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)V",
        "getReference",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/session/Reference;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "interruptGetReference",
        "switchToGuest",
        "Lcom/sightcall/session/ReferenceUpdate;",
        "token",
        "Lcom/sightcall/httpclient/AuthorizationToken;",
        "(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "switchToAttendee",
        "session_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final referenceDataSource:Lcom/sightcall/session/datasource/reference/ReferenceDataSource;


# direct methods
.method public constructor <init>(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/SessionRepositoryImpl;->referenceDataSource:Lcom/sightcall/session/datasource/reference/ReferenceDataSource;

    return-void
.end method


# virtual methods
.method public getReference(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/Reference;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/session/SessionRepositoryImpl;->referenceDataSource:Lcom/sightcall/session/datasource/reference/ReferenceDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/session/datasource/reference/ReferenceDataSource;->getReference(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public interruptGetReference()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/SessionRepositoryImpl;->referenceDataSource:Lcom/sightcall/session/datasource/reference/ReferenceDataSource;

    invoke-interface {p0}, Lcom/sightcall/session/datasource/reference/ReferenceDataSource;->interruptGetReference()V

    return-void
.end method

.method public switchToAttendee(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/AuthorizationToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/session/SessionRepositoryImpl;->referenceDataSource:Lcom/sightcall/session/datasource/reference/ReferenceDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/session/datasource/reference/ReferenceDataSource;->switchToAttendee(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public switchToGuest(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/AuthorizationToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/session/SessionRepositoryImpl;->referenceDataSource:Lcom/sightcall/session/datasource/reference/ReferenceDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/session/datasource/reference/ReferenceDataSource;->switchToGuest(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
