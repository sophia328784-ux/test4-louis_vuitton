.class public final synthetic Lcom/google/firebase/sessions/api/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/api/a;->b:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->a:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    iget-object p0, p0, Lcom/google/firebase/sessions/api/a;->b:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    iget-object p0, p0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
