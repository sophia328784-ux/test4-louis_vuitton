.class public Lcom/dynatrace/android/agent/conf/InitialServerIdProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/dynatrace/android/agent/data/RandomFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dynatrace/android/agent/data/RandomFactory;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/data/RandomFactory;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/conf/InitialServerIdProvider;->a:Lcom/dynatrace/android/agent/data/RandomFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
