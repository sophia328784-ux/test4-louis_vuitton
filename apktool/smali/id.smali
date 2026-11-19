.class public final synthetic Lid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/c0$b;


# instance fields
.field public final synthetic a:Lcom/batch/android/BatchOptOutResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/BatchOptOutResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid;->a:Lcom/batch/android/BatchOptOutResultListener;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lid;->a:Lcom/batch/android/BatchOptOutResultListener;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->i(Lcom/batch/android/BatchOptOutResultListener;Ljava/lang/Exception;)V

    return-void
.end method
