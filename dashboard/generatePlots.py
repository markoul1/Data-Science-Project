import importlib
import pkgutil
import plotGenerators
import traceback

for _, module_name, _ in pkgutil.iter_modules(plotGenerators.__path__):
    try:
        module = importlib.import_module(f'plotGenerators.{module_name}')
        
        if hasattr(module, 'generate'):
            
                module.generate()
    except Exception as e:
        print(f"Exception in plot generation module: {module_name}")
        stack_trace = traceback.format_exc() 
        print(stack_trace)