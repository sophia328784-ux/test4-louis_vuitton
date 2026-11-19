.class Lorg/aspectj/runtime/reflect/JoinPointImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/ProceedingJoinPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;

.field public final d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->a:Ljava/lang/Object;

    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->b:Ljava/lang/Object;

    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getTarget()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
