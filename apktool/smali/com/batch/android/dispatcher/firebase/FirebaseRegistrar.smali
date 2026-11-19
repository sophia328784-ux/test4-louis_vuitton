.class public Lcom/batch/android/dispatcher/firebase/FirebaseRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/eventdispatcher/DispatcherRegistrar;


# static fields
.field private static instance:Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDispatcher(Landroid/content/Context;)Lcom/batch/android/BatchEventDispatcher;
    .locals 0

    sget-object p0, Lcom/batch/android/dispatcher/firebase/FirebaseRegistrar;->instance:Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;

    if-nez p0, :cond_0

    new-instance p0, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;

    invoke-direct {p0, p1}, Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/batch/android/dispatcher/firebase/FirebaseRegistrar;->instance:Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;

    :cond_0
    sget-object p0, Lcom/batch/android/dispatcher/firebase/FirebaseRegistrar;->instance:Lcom/batch/android/dispatcher/firebase/FirebaseDispatcher;

    return-object p0
.end method
