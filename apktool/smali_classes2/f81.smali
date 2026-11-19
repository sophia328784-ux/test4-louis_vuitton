.class public final synthetic Lf81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l1/i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf81;->a:Ljava/lang/String;

    iput-wide p2, p0, Lf81;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/l1/c;)V
    .locals 3

    iget-object v0, p0, Lf81;->a:Ljava/lang/String;

    iget-wide v1, p0, Lf81;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/batch/android/l1/b;->b(Ljava/lang/String;JLcom/batch/android/l1/c;)V

    return-void
.end method
