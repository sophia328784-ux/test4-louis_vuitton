.class public final synthetic Lm81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l1/i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm81;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lm81;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/l1/c;)V
    .locals 1

    iget-object v0, p0, Lm81;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lm81;->b:Z

    invoke-static {v0, p0, p1}, Lcom/batch/android/l1/b;->g(Ljava/lang/String;ZLcom/batch/android/l1/c;)V

    return-void
.end method
