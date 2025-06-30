FROM maven:3.8.4-openjdk-17 as builder
WORKDIR /test_jacoco
COPY . .
# -DskipTests=false 确保测试被执行，-B 批处理模式减少输出
RUN mvn clean package -s settings.xml -DskipTests=false -B

# 可选：生成测试覆盖率报告（如果配置了 Jacoco）
RUN mvn jacoco:report
RUN mkdir -p /jacoco-report && \
    cp -r /test_jacoco/target/site/jacoco/* /jacoco-report/
