<?php

/**
 * Stub file for Psalm to recognize CodeIgniter framework functions and classes.
 */

namespace Psalm\Internal\Codebase;

class InternalCodebase
{
    /**
     * Initializes framework functions for Psalm to recognize.
     */
    public function initFunctions(): void
    {
        // Fully qualify the namespace when checking for the function's existence
        if (!function_exists(__NAMESPACE__ . '\\view')) {
            /**
             * Declare the stub function within the current namespace.
             * @psalm-suppress UndefinedFunction
             */
            function view(string $view, array $options = []): string
            {
                return '';
            }
        }
    }
}
